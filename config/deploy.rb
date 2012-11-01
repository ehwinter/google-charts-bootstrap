# Simple capistrano script to deploy code 
#   from: the :repository machine
#   to:   a remote machine (server) domain
#   initiated from: a third workstation machine (machine that runs cap script)
#
# 
# AUTHORIZATION SETUP
# add OpenSSH public key (*.pub) from workstation machine to server's deploy user authorized_keys so ws can talk to server
# test from ws by: ssh deploy@server
# create a private/public key on deploy@server  and add OpenSSH public key to 
#   repo machine's authorized_keys so server can pull from git
# add pub key from deploy@server machine to repo machines authorized_keys so server can pull from git
# test from server by: ssh git@repository
#
# CAPISTRANO DIRECTORY SETUP
# First time from workstation
# cap deploy:setup
# cap deploy:test
# 
# CAPISTRANO NORMAL OPERATION
# from workstation: cap deploy 
#
# NOTES
# deploy script: the deploy.rb script that is used to perform the deploy is the config/deploy.rb 
#                on the workstation machine. It does not need to be in git. 
# 
# 
# 
# 
# 

#require "bundler/capistrano"

set :application, "shuttle"
set :repository,  "bitnami@174.129.245.98:git/shuttle"

set :user, 'bitnami'   # login as this user on remote machine.
set :use_sudo, false    # default installs as root then runs as 

set :branch, "charles"
set :scm, :git
set :deploy_via, :remote_cache
set :deploy_to, "/home/bitnami/railsapps/#{application}"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
domain="174.129.245.98" # had issues when this was a symbol

role :web, domain                          # Your HTTP server, Apache/etc
role :app, domain                          # This may be the same as your `Web` server
role :db,  domain, :primary => true # This is where Rails migrations will run
role :db,  domain

# if you want to clean up old releases on each deploy uncomment this:
after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
  #override symlink
  task :finalize_update do
    transaction do
      #create database
      #run "if [ ! -e #{shared_path}/db/production.sqlite3 ];then cd #{release_path} && rake db:create db:migrate db:seed && mv #{release_path}/db/production.sqlite3 #{shared_path}/db/production.sqlite3"
    end
  end
  #override symlink
  task :create_symlink do
    transaction do
      run "ln -nfs #{current_release} #{deploy_to}/#{current_dir}"
      run "ln -nfs #{shared_path}/log  #{release_path}/log"
      run "ln -nfs #{shared_path}/tmp  #{release_path}/tmp"
      run "ln -nfs #{shared_path}/config/database.yml  #{release_path}/config/database.yml"
      run "ln -nfs #{shared_path}/db/production.sqlite3  #{release_path}/db/production.sqlite3"
    end
  end

  namespace :assets do
    task :precompile, :roles => :web, :except => { :no_release => true } do
      from = source.next_revision(current_revision)
      if capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
        run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
      else
        logger.info "Skipping asset pre-compilation because there were no asset changes"
      end
    end
  end

  
end
