class CommentsController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = params["post_id"]
    @post = Post.find(params["post_id"])
    if @comment.save!
      respond_to do |format|
        format.html { redirect_to post_path(@comment.post_id), notice: 'comment was successfully created.' }
        format.text { render partial: "posts/comments", locals: { post: @post }, formats: [:html] }
      end

    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end
end
