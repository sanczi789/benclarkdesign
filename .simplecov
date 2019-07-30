SimpleCov.start do
  load_profile 'rails'
  minimum_coverage 90

  add_filter 'vendor/ruby'
  add_filter 'vendor/bundle'
  # add_filter 'app/mailers'
  # add_filter 'app/jobs'
  # add_filter 'app/channels'
  # add_group 'Decorators', 'app/decorators'
  # add_group 'Renderers', 'app/renderers'
  # add_group 'Serializers', 'app/serializers'
end
