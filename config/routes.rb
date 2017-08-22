Rails.application.routes.draw do
  root :to => 'languages#content'

  devise_for :users
	resources :languages do
		resources :projects
  	end
  	resources :blogs, only: [:index, :show] do
  		resources :comments, only: [:index, :show, :edit]
  	end	

    resources :references, only: [:index, :show] do

  	namespace :admin do
  		resources :blogs do
        resources :comments
      end
  	end	
end
