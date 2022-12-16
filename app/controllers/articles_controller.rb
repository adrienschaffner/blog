class ArticlesController < ApplicationController
  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  before_action :set_article, only:[:top, :show, :edit, :update, :destroy, :top, :author]

  def top
    @articles = Article.where(rating: (5..10))
  end

  def author
    @author = @article.author
  end

  def index
    @articles = Article.all
  end

  def show
  end

  # instantiates a new article but does not save it
  def new
    @article = Article.new
  end

  # instantiates a new article with values, and attempts to save it.
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :status, :rating, :author)
  end
end
