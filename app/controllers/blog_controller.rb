class BlogController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.friendly.find(params[:slug])
  end
end
