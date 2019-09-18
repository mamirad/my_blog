class HomeController < ApplicationController
  def index
  	@articles = Article.all
  	@three_articles = Article.take(3)
  end
end
