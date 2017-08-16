Rails.application.routes.draw do
  root :to => 'languages#content'

  devise_for :users
	resources :languages do
		resources :projects
  	end
  	resources :blogs, only: [:index, :show]

  	namespace :admin do
  		resources :blogs
  	end	
end
