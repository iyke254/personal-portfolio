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
			render :new, alert:"Something went wrong"
		end
	end
	def edit; end

	def update
		if @blog,update(blog_params)		