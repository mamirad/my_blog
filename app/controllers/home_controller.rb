class HomeController < ApplicationController
  def index
  	@articles = Article.all.paginate(page: params[:page], per_page: 30)
  	@three_articles = Article.take(3)
  end
end
