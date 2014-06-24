Fauteuil::Application.routes.draw do

  root 'chairs#index'

  resources :chairs, only: [:index, :show, :create, :new]

  resources :chairs do
    resources :reviews
  end

  devise_for :users, :controllers => { :registrations => "registrations" }
end
