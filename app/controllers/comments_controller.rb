class CommentsController < ApplicationController

	
	before_action :authenticate_user!, only: [:create, :destroy]

	  def create
	  	@article = Article.friendly.find(params[:article_id])
	  	@comment = @article.comments.create(comment_params)
	  	@comment.user_id = current_user.id if current_user
	  

	  	if @comment.save	
	  		redirect_to article_path(@article)
	  	else
	  		flash.now[:danger] ="error"
	  	end
	  end

	  def show
	   
	  end

	 



  private


  def comment_params
		params.require(:comment).permit(:content)
  end


end




























