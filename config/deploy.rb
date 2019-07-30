# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.11.0'

set :application, 'benclarkdesign'

set :docker_registry, ENV.fetch('CI_REGISTRY')
set :docker_registry_user, ENV.fetch('CI_REGISTRY_USER')
set :docker_registry_password, ENV.fetch('CI_REGISTRY_PASSWORD')
set :docker_registry_image, ENV.fetch('CI_REGISTRY_IMAGE')
