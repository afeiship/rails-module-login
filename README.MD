#rails-module-login
> Rails module for login.

## replace gem source
```bash
gem source --remove https://rubygems.org/
gem source -a https://gems.ruby-china.org
```

## initialize:
```bash
cd ~/github/rails-module-login-out
rails new .
```

## some errors:
```conf
An error occurred while installing nokogiri (1.7.0.1), and Bundler cannot continue.
Make sure that `gem install nokogiri -v '1.7.0.1'` succeeds before bundling.

http://stackoverflow.com/questions/34651519/error-while-installing-nokogiri-1-6-7-on-el-capitan

You should install xcode-select packages first, then try installing nokogiri again. Try these commands,

xcode-select --install
then try

gem install nokogiri
with whatever Nokogiri version you want.
Nokogiri depends on multiple libraries like libxslt, libxml and zlib. Dev versions (including source) of these should be installed before installing Nokogiri in any Linux distribution. For OS X, the above command should work I guess.
The actual solution is in the comments below.
```



## resources:
+ http://www.jb51.net/article/86876.htm
+ https://gist.github.com/thebucknerlife/10090014
+ https://www.railstutorial.org/book/basic_login
