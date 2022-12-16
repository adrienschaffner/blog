class CommentsController < ApplicationController
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  before_action :set_comments, only: [ :new, :create, :destroy ]

  def new
  end

  def create
    # Each request for a comment has to keep track of the article to which the comment is attached,
    # thus the initial call to the find method of the Article model to get the article in question.
    @comment = @article.comments.create(comment_params)
    if @comment.save
      redirect_to article_path(@article)
    else
      # render :article => "show", status: :unprocessable_entity
      redirect_to article_path(@article), status: :unprocessable_entity
      # add a flash alert
    end
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

# @review = Review.new(review_params)
#   @review.restaurant = @restaurant
