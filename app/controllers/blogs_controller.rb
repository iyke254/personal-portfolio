class BlogsController < ApplicationController
	def new
		@blog = Blog.new
		render :new
	end

	def index
		@blogs = Blog.all
		render :index
	end

	def show
		@blog = Blog.find(params[:id])
		render :show
	end

	def create
		@blog = Blog.new(blog_params)
		if @blog.save
			redirect_to blogs_path
		else
			render :new
		end
	end

	def edit
		@blog = Blog.find(params[:id])
		render :edit
	end
	
	def update
		@blog = Blog.find(params[:id])
		if @blog.update(blog_params)
			redirect_to blogs_path
		else
			render :edit
		end
	end	

	def destroy	
		@blog = Blog.find(params[:id])
		@blog.destroy
		flash[:notice] = "Blog successful deleted!"
		redirect_to blogs_path
	end			

	private
		def blog_params
			params.require(:blog).permit(:name, :content)	
		end			
end		