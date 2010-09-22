set :application, 'whoisgettinglunch'

set :scm, :git
set :repository, "."
set :branch, 'master'
set :git_enable_submodules, true
set :deploy_via, :copy
set :copy_strategy, :export
set :use_sudo, false

ssh_options[:forward_agent] = true
ssh_options[:username] = 'robertbeekman'

role :app, 'whoisgetting.com'
role :web, 'whoisgetting.com'
role :db,  'whoisgetting.com', :primary => true

set :deploy_to, "/Sites/#{application}/app"

task :tail do
  run "tail -f #{deploy_to}/shared/log/production.log"
end

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  task :finalize_update, :roles => :app do
    run "ln -s #{deploy_to}/shared/log #{release_path}/log"
    run "ln -s #{deploy_to}/shared/tmp #{release_path}/tmp"
    run "ln -s #{deploy_to}/shared/system #{release_path}/public/system"
  end
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end
