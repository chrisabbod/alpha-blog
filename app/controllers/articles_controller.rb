class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy] #perform this method before running code for the methods listed

  def show
  end

  def index
    @articles = Article.all 
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create 
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was created successfully." #can choose any name to give flash message but common symbols are :notice or :alert. Alert is usually for when something goes wrong.
      redirect_to @article #redirect using the show method (@article gives article id)
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was updated successfully."
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private #Anything below is a private method available only to this controller

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params 
    params.require(:article).permit(:title, :description)
  end

end