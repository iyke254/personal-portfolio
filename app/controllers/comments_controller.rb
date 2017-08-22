class CommentsController < ApplicationController
    def new
      @blog = Blog.find(params[:blog_id])
      @comment = @blog.comments.new
    end

    def create
    	@blog = Blog.find(params[:blog_id])
    	@comment = @blog.comments.new(comment_params)

    	if @comment.save
    		redirect_to blogs_path(@comment.blog)
    	else
    		render :new
    	end
    end


    def edit
        @blog = Blog.find(params[:blog_id])
        @comment = @blig.comments.edit(comment_params)
        
    end
    
    
    private
    def comment_params
    	params.require(:comment).permit(:description)			
    end

end
