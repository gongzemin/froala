class DashboardsController < ApplicationController
  def show
  	@dashboard = Dashboard.new(articles: featured_articles)
  end

  private 
  def featured_articles
  end

end
