class CommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  before_action :set_comments, only: [ :create, :destroy ]
  def create
    # Each request for a comment has to keep track of the article to which the comment is attached,
    # thus the initial call to the find method of the Article model to get the article in question.
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private

  def set_comments
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
