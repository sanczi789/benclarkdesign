# frozen_string_literal: true

server 'ENTER_PRODUCTION_SERVER_HERE',
       roles: %i[app], primary: true, user: 'deploy',
       migrate_on_deploy: true

set :docker_image_tag, 'latest'
set :environment_variables, %w[]

# set :exposed_ports, ['3000:3000']
set :slug, ENV.fetch('CI_ENVIRONMENT_SLUG')
set :database_url, ENV.fetch('PRODUCTION_DATABASE_URL')
