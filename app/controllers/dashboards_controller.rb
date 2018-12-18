class DashboardsController < ApplicationController
  def show
  	@categories = Category.all
    @articles = Article.where(category_id: params[:category_id]) if params[:category_id].present?
  end

  #def show
  	#@dashboard = Dashboard.new(articles: featured_articles)
  #end

  private 
  def featured_articles
  end

end
