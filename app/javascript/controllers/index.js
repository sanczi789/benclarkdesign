// Load all the controllers within this directory and all subdirectories.
// Controller files must be named *_controller.js.

import { Application } from 'stimulus'
import { RailsUJSController } from 'stimulus-rails-ujs'
import { definitionsFromContext } from 'stimulus/webpack-helpers'

const application = Application.start()
application.register('rails-ujs', RailsUJSController)
const context = require.context('controllers', true, /_controller\.js$/)
application.load(definitionsFromContext(context))
