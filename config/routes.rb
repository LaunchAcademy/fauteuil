Fauteuil::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :chairs , only: [:index]
  root "chairs#index"
end
