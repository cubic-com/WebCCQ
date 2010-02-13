set :application, "WebCCQ"
set :repository,  "git@github.com:cubic-com/WebCCQ.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/var/www"
#set :user, 'root'


role :web, "192.168.90.2"                          # Your HTTP server, Apache/etc
role :app, "192.168.90.2"                          # This may be the same as your `Web` server
role :db,  "192.168.90.2", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
