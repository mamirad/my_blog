class ArticleCommentsController < ApplicationController
	def create
		
		@article_comment = ArticleComment.new(comment: params[:comment],article_id: params[:article_id],user_id: current_user.id)
	     if params[:article_comment_id].present?
	    
	      @obj_article = BlogComment.find (params[:article_comment_id])

	      @article_comment.article_id=@obj_article.article_id
	      @article_comment.parent_id=params[:article_comment_id]
	     end
	     @article_comment.save
		    respond_to do |format|
		    format.js{}
			end 
	end
end
