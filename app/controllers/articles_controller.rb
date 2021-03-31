class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # raise
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params)
    if @article.save
      redirect_to article_path
    else
      render :new
    end
  end

  # index show new create edit update destroy
end
