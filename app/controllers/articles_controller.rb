class ArticlesController < ApplicationController
	before_action :set_article, only: [:show, :edit, :update, :destroy]

	before_action :authenticate_user!, except: [:index, :show]
	# before_action :require_login, except: [:index, :show]



	def index 
		#@user = current_user
		#@articles = @user.articles.all.order('created_at DESC')
		query = params[:q].presence || "*"
        @articles = Article.search(query)
	end

	def new 
		@article = current_user.articles.build
	end

	def create
		@article = current_user.articles.build(article_params)
	
		if @article.save
			flash[:notice] = "Successfully created article!"
			redirect_to article_path(@article)
		else
			flash[:alert] = "Error creating new article!"
			render :new
		end
	end

	def edit
	end

	def update
		if @article.update_attributes(article_params)
		  flash[:notice] = "Successfully updated article!"
		  redirect_to article_path(@article)
		else
		  flash[:alert] = "Error updating article!"
		  render :edit
		end
	end

	def show
	end

	def destroy
		if @article.destroy
		   flash[:notice] = "Successfully deleted article!"
		   redirect_to articles_path
		else
			flash[:alert] = "Error updating articles!"
		end
	end

	private

	def article_params
		params.require(:article).permit(:title, :body, :goal, :subtitle, :project_cover, :category_id, :project_video)
	end

	def set_article
		@article = Article.friendly.find(params[:id])
	end
end













































