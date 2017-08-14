class ProjectsController < ApplicationController
	def new
		@language = Language.find(params[:language_id])
		@project = @language.projects.new
	end

	def create
		@language = Language.find(params[:language_id])
		@project = @language.projects.new(project_params)
		if @project.save
			redirect_to language_path(@project.language)
		else
			render :new
		end
	end	

	private
    	def project_params
      		params.require(:project).permit(:description)
    	end
  		
end		