class LanguagesController < ApplicationController
	def new
		@language = Language.new
		render :new
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

	private
		def language_params
			params.require(:list).permit(:name)	
		end			
end		
