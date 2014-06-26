Fauteuil::Application.routes.draw do

  root 'chairs#index'

  resources :chairs, only: [:index, :show, :create, :new]

  resources :chairs do
    resources :reviews
  end

  resources :reviews do
    member do
      post 'upvote'
    end
    member do
      post 'downvote'
    end
  end

  devise_for :users, :controllers => { :registrations => "registrations" }
end
