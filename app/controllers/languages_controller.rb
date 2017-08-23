class LanguagesController < ApplicationController
	before_action :set_user
	def new
		@language = Language.new
		render :new
	end

	def content 
		@feedbacks=Feedback.all
	end

	def index
		@languages = Language.all
		render :index
	end

	def show
		@language = Language.find(params[:id])
		render :show
	end

	def create
		@language = Language.new(language_params)
		if @language.save
			redirect_to languages_path
		else
			render :new
		end
	end

	def edit
		@language = Language.find(params[:id])
		render :edit
	end
	
	def update
		@language = Language.find(params[:id])
		if @language.update(language_params)
			redirect_to languages_path
		else
			render :edit
		end
	end				

	private
	  def set_user
    	@user = current_user
  	  end
		def language_params
			params.require(:language).permit(:name)	
		end	


end		
