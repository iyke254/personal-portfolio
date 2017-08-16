class Admin::BlogsController < AdminController
	before_action :find_blog, onlyL: [:show, :edit, :update, :destroy]

	def index
		@blogs = Blog.all
	end
	
	def show; end

	def new
		@blog = Blog.new
	end
	
	def create
		@blog = Blog.new(blog_params)

		if @blog.save
			redirect_to admin_blog_path(@blog)
		else
			render :new, alert:"Something went wrong."
		end
	end

	def edit; end

	def update
		if @blog.update(blog_params)	
			redirect_to admin_blog_path(@blog)
		else
			render :edit, alert: "Something went wrong."
		end
	end	

	def destroy
		@blog.destroy
		redirect_to admin_blog_path, alert: "Successfully deleted publication."			
	end
	
	private
	def find_blog
		@blog = Blog.find(params[:id])
	end
	
	def blog_params
		params.require(:blog).permit(:name, :content)		