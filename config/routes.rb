Fauteuil::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :chairs , only: [:index]
  root to: "chairs#index"
end
