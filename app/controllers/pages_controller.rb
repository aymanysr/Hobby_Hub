class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @groups = Group.take(3)
    # @group = Group.find(params[:id])
  end
end
