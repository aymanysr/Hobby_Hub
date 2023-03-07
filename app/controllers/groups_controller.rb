class GroupsController < ApplicationController
  def index
    if params[:query].present?
      @groups = Group.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @groups = Group.all

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
