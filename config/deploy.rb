set :application, 'landpark'
set :repo_url, 'git@github.com:robwannell/landpark.git'

set :deploy_to, '/home/deploy/landpark'

set :linked_files, %w{config/database.yml config/secrets.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

namespace :deploy do

  desc "build missing paperclip styles"
  task :build_missing_paperclip_styles do
    on roles(:app) do
      execute "cd #{current_path}; RAILS_ENV=production bundle exec rake paperclip:refresh:missing_styles"
    end
  end
  
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  
  after("deploy:compile_assets", "deploy:build_missing_paperclip_styles")
  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end


