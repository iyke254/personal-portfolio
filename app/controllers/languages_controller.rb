class LanguagesController < ApplicationController
	def index
		@languages = Language.all
		render :index
	end

	def show
		@languages = Language.find(params[:id])
		render :show
	end
end		
