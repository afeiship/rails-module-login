Rails.application.routes.draw do
  get 'login'=>'users#login', :as=>'login'
  post 'create_login_session'=>'users#create_login_session'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
