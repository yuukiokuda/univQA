class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/"
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, answer_id: params[:answer_id])
  end
end
