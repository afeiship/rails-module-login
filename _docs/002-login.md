# login:

```rb
# Model: user.rb
class User < ApplicationRecord
    has_secure_password
end

# table:
# name:String, email: String, password_digest:String

# users_controller.rb
def create_login_session
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to :root
    else
        render :login
    end
end
```

## 大概原理：
```rb
 u = User.find_by(:name=>"afei")
 u.authenticate("123123")

#  > User [true]
#  > false(Not exist)
```