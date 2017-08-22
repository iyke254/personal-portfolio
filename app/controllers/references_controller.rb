class LanguagesController < ApplicationController
	def new
		@reference = Language.new
		render :new
	end

	def index
		@references = Language.all
		render :index
	end

	def show
		@reference = Language.find(params[:id])
		render :show
	end

	def create
		@reference = Language.new(reference_params)
		if @reference.save
			redirect_to references_path
		else
			render :new
		end
	end

	def edit
		@reference = Language.find(params[:id])
		render :edit
	end
	
	def update
		@reference = Language.find(params[:id])
		if @reference.update(reference_params)
			redirect_to references_path
		else
			render :edit
		end
	end				

	private
		def reference_params
			params.require(:reference).permit(:name)	
		end			
end		
