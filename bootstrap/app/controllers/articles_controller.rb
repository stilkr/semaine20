class ArticlesController < ApplicationController
  
  def index
    @articles = Article.page(params[:page]).per(5)
  end

  def show
    @article = Article.find(params[:id])
    @comments = Comment.where(article_id: @article).page(params[:page]).per(5) 
  end
  
  def update
  @article = Article.find(params[:id])
  if @article.update title: params[:title]
    flash[:success] = "L'article a été mis à jour."
    redirect_to "/articles/#{params[:id]}"
  else
    render 'show'
  end
  end
  
end
