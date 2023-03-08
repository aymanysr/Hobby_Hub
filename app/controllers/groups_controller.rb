class GroupsController < ApplicationController
  def index
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

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
  end

  def edit
  end
end
