Rails.application.routes.draw do
  get 'login'=>'users#login', :as=>'login'
  get 'register'=>'users#new'
  post 'create'=>'users#create'
  post 'create_login_session' => 'users#create_login_session'
  

  root :to => 'pages#welcome' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
