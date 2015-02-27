# ShrGallery

ShrGallery is simple gallery management system for Rails 4.

## Installation:

### Add in Your Gemfile line like this:
``` ruby
# Gemfile
gem 'haml'
gem 'shr_gallery', git: 'https://github.com/shredder-rull/shr_gallery.git'
```

After it:

``` ruby
$ bundle
$ rake shr_gallery:install
```
Now You cat login: http://0.0.0.0:3000/admin
login: admin@test.com
password: admin

You may add root route if need:
``` ruby
# config/routes.rb
root :to => 'galleries#index'
```
