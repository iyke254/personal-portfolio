class CommentsController < ApplicationController
    def new
      @blog = Blog.find(params[:blog_id])
      @comment = @blog.comments.new
    end
  end