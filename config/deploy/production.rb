set :stage, :production

role :app, %w{deployer@104.131.93.112}
role :web, %w{deployer@104.131.93.112}
role :db,  %w{deployer@104.131.93.112}

server '104.131.93.112', user: 'deployer', roles: %w{web app db}

set :branch, ENV["REVISION"] || ENV["BRANCH_NAME"] || "master"
