class MeetingsController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped

  def index
    start_date = params.fetch(:start_date, Date.today).to_date
    @meetings = Meeting.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week
    )
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user_id = current_user.id
    if @meeting.save!
      redirect_to @meeting, notice: 'Event was successfully created.'
    else
      render :new
    end
  end
  # def create
  #   @group = Group.new(group_params)
  #   @group.user_id = current_user.id
  #   if @group.save!
  #     redirect_to @group, notice: 'Group was successfully created.'
  #   else
  #     render :new
  #   end
  #   authorize @group
  # end
  # def create
  #   @post = Post.new(post_params)
  #   @post.user_id = current_user.id
  #   @post.group_id = params["group_id"]
  #   if @post.save!
  #     redirect_to group_path(@post.group_id), notice: 'Post was successfully created.'
  #   else
  #     render :new
  #   end
  # end
  def show
    @meeting = Meeting.find(params[:id])
    @group = Group.new
    # authorize @meeting
  end

  private

  def meeting_params
    params.require(:meeting).permit(:name, :description, :start_time, :end_time, :user_id)
  end
end
