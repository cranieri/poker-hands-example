require "bundler/capistrano"
require "rvm/capistrano"

set :rvm_ruby_string,  ENV['GEM_HOME'].gsub(/.*\//,"")
set :rvm_type, :user
set :rvm_path, "/usr/local/rvm"
set :rvm_bin_path, "/usr/local/rvm/bin"
set :rvm_ruby_string, "1.9.3-p194"
set :application, "poker-hands-example"
set :repository,  "https://github.com/cranieri/poker-hands-example.git"

set :user, "root"
ssh_options[:forward_agent] = true

default_run_options[:pty] = true

#set :password, "0zSu797Ynd"
#set :branch, "sidekiq"
set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :normalize_asset_timestamps, false
role :web, "69.25.136.89"                          # Your HTTP server, Apache/etc
role :app, "69.25.136.89"                          # This may be the same as your `Web` server
role :db,  "69.25.136.89", :primary => true # This is where Rails migrations will run

set :deploy_to, "/var/www"
set :current_path, '/var/www/poker-test'
set :releases_path, '/var/www/releases-test'


# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd /var/www/current && bundle install"
    run "cd /var/www/current && RAILS_ENV=production rake assets:precompile"
    run "cd /var/www/current && RAILS_ENV=production rake db:migrate"
    run "cd /var/www/current && RAILS_ENV=production rake db:seed"
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end