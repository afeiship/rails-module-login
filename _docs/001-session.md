# session的基本操作：

```rb
# set
session[:user_id] = user.id

# get:
user_id = session[:user_id];

# destroy:
session[:user_id] = nil
```

## session 会在 cookie 产生一个cookie_id
> 如果用户已经登录了，这个cookie 会带到 Server 端，session 会在 session 里找到对应的值
> 有值，则是表示登录状态，没有就表示没有登录