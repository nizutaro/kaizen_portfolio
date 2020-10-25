class CommentsController < ApplicationController

  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      @comments= @project.comments
    end
  end
  
  def destroy
    @project =  Project.find(params[:project_id])
    @comments = Comment.find(params[:id])
    @comments.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :project_id, :user_id)
  end
end
