Rails.application.routes.draw do
  root :to => 'languages#content'

  devise_for :users
	resources :languages do
		resources :projects
  	end
end
