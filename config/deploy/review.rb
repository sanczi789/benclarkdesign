# frozen_string_literal: true

server ENV.fetch('REVIEW_SERVER'),
       roles: %i[app db], primary: true, reset_on_deploy: true,
       user: 'deploy'

set :environment_variables, %w[]

set :slug, ENV.fetch('CI_ENVIRONMENT_SLUG')
set :host_url, ENV.fetch('CI_ENVIRONMENT_URL')
set :docker_image_tag, ENV.fetch('CI_COMMIT_REF_SLUG')
set :database_url,
    "postgres://postgres@#{fetch(:slug)}-db/#{fetch(:application)}"
set :database_image, 'postgres:10'
set :docker_network, 'web'
set :docker_labels, [
  "traefik.backend=#{fetch(:slug)}",
  "traefik.frontend.rule=Host:#{fetch(:slug)}.#{ENV.fetch('REVIEW_DOMAIN')}"
]
