Rails.application.routes.draw do
  
 
  resources :archivos
  resources :informes
  resources :users
  get 'contacto/index'

root :to => "home#index"
  get 'home/index'
  
  resources :identificacions
  resources :casos

	get "/log-in" => "sessions#new"
	post "/log-in" => "sessions#create"
  get "/bajaresi/:id" => "informes#document_download"
	get "/log-out" => "sessions#destroy", as: :log_out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
