class PostsController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.group_id = params["group_id"]
    if @post.save!
      redirect_to group_path(@post.group_id), notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @group = Group.find(@post.group_id)
  end

  private

  def post_params
    params.require(:post).permit(:content, :group_id)
  end
end
