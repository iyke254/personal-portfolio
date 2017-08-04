class LanguagesController < Applicationcontroller
	def index
		@languages = Language.all
		render :index
	end
end		