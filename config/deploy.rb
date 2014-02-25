# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'errbit'
set :repo_url, 'git@github.com:assetricity/errbit.git'
set :branch, 'assetricity'

# config/deploy.rb
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.1.0'

set :rails_env, 'production'

set :linked_files, %w{config/mongoid.yml config/initializers/secret_token.rb config/config.yml}
set :linked_dirs, %w{tmp log}
