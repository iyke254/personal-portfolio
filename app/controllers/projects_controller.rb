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
   		@language = List.find(params[:language_id])
   		@task = @language.tasks.find(params[:id])
   
 	end

	def update
  		 @language = List.find(params[:language_id])
  		 @task = @language.tasks.find(params[:id])
   	if @task.update(task_params)
     	flash[:notice] = "Task successfully updated!"
    	redirect_to language_path(@language)
    else
     	render :edit
   	end
 end

def destroy
   @language = List.find(params[:language_id])
   @task = @language.tasks.find(params[:id])
   @task.destroy
   flash[:notice] = "Task successfully deleted!"
   redirect_to language_path(@language)
 end

	private
    	def project_params
      		params.require(:project).permit(:description)
    	end
  		
end		