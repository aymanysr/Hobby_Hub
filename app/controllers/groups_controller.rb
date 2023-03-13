class GroupsController < ApplicationController
  def index
    @groups = policy_scope(Group)
    if params[:query].present?
      @groups = Group.joins(:category, :city)
                     .where("title ILIKE :query OR categories.name ILIKE :query OR cities.name ILIKE :query",
                            query: "%#{params[:query]}%")
    else
      @groups = Group.all
    end
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "groups/list", locals: { groups: @groups }, formats: [:html] }
    end
  end

  def filter
    @groups = Group.joins(:category, :city).where(city_id: params[:city_ids])
  end

  def join
    if UserGroup.create(
      user: current_user,
      group_id: params["group_id"]
    )
      redirect_to group_path(params["group_id"])
    end
  end

  def leave
    ug = UserGroup.where(user_id: current_user.id, group_id: params["group_id"]).first
    if ug.destroy
      redirect_to group_path(params["group_id"])
    end
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)

    if @group.save
      redirect_to @group, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    @post = Post.new
    authorize @group
  end

  def edit
    @group = Group.find(params[:id])
    authorize @group
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to @group, notice: 'Group was successfully updated.'
    else
      render :edit
    end
    authorize @group
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_url, notice: 'Group was successfully destroyed.'
    authorize @group
  end

  private

  def group_params
    params.require(:group).permit(:title, :description, :category_id, :city_id)
  end
end
