class CommentsController < ApplicationController

  # def new
  #   @article = Article.find(params[:article_id])
  #   @comment = @article.comments
  #   respond_to do |format|
  #     format.js { render action: 'new' }
  #   end
  # end
  
  def create
    @article = Article.find(params[:article_id])
     @comment = @article.comments.new comment_params
     respond_to do |format|
      if @comment.save
        format.html { redirect_to article_url(@comment.article_id) }
      else
       format.html  { 
        redirect_to article_url(@comment.article_id)
        flash[:success] = 'Comment must be less than 140 characters'
       }
      end
     end
  end

  # def reply
  #   @article = Article.find(params[:article_id])
  #   @comment = Comment.find(params[:id])
  # end

  # def create_reply
  #   @reply = Comment.create(reply_params)
  # end
 
  private
    def comment_params
      params.require(:comment).permit(:title, :body, :parent_id, :article_id)
    end

    def reply_params
      params.require(:reply).permit!
    end
end
