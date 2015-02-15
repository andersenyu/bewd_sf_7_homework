class CommentsController < ApplicationController
	def create
	    @article = Article.find(params[:article_id])
	    @comment = @article.comments.create(comment_params)
	    redirect_to article_path(@article)
	end
 
	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
  end
 

#####Bryan's Comments########
# Make sure your indentation is consistent. 
# You only need to call "private" once. I have also commented out the extra code you had down at
# the bottom.
#############################
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
# end


	 # private
	 #    def comment_params
	 #      params.require(:comment).permit(:commenter, :body)
	 # 	end
end
