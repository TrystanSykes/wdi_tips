class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.content = params[:content]
    comment.tip_id = params[:tip_id]
    comment.save
    redirect_to "/tips/#{comment.tip_id}"
  end
end
