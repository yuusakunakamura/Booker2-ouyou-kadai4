Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'homes#index'
get "home/about" => "homes#about"




resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy, :oioi]

get 'users' => 'users#index'

 resources :users do
    member do
     get :following, :followers
    end
  end
  resources :relationships, only: [:create, :destroy]

end
