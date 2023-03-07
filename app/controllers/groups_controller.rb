class GroupsController < ApplicationController
  def index
    @groups = Group.where("title ILIKE ?", "%#{params[:query]}%")
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
