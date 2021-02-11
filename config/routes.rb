Rails.application.routes.draw do
  devise_for :users
  root 'announcements#index'
  # get '/announcements/new', to: 'announcements#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
