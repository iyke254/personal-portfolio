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

	def edit
   		@language = Language.find(params[:language_id])
   		@project = @language.projects.find(params[:id])
   
 	end

	def update
  		 @language = Language.find(params[:language_id])
  		 @project = @language.projects.find(params[:id])
   	if @project.update(project_params)
     	flash[:notice] = "Project successfully updated!"
    	redirect_to language_path(@language)
    else
     	render :edit
   	end
 end

	def destroy
   		@language = Language.find(params[:language_id])
  		@project = @language.projects.find(params[:id])
  		@project.destroy
   		flash[:notice] = "Project successfully deleted!"
   		redirect_to language_path(@language)
 	end

	private
    	def project_params
      		params.require(:project).permit(:description)
    	end
  		
end		