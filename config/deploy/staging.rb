set :deploy_to, '/var/www/apps/errbit'

set :app_url, 'staging.iom-og.com'

set :user, 'deploy'

role :app, 'staging.iom-og.com', user: 'deploy'
role :web, 'staging.iom-og.com', user: 'deploy'
role :db, 'staging.iom-og.com', user: 'deploy'

set :default_env, {execjs_runtime: 'Node'}

set :unicorn_config_path, 'config/unicorn.rb'

namespace :deploy do
  task :restart do
    invoke 'unicorn:reload'
  end
end

after 'deploy:publishing', 'deploy:restart'
