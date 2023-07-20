Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  
  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
  
  root "pages#index"
end
