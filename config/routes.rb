Rails.application.routes.draw do
  resources :jokers
  resources :items
  get 'users/:id' => 'users#show'

  resources :submissions
  resources :tweets
  ActiveAdmin.routes(self)
	devise_for :users 

	as :user do
		get "signin" => 'devise/sessions#new'
		delete "signout" => 'devise/sessions#destroy'
		get 'signup' => 'devise/registrations#new'
	end 


  root 'pages#home'
  get 'contact' =>'pages#contact'
  get 'about' => 'pages#about'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
