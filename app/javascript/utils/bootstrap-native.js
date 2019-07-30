/* global BSN */
import 'bootstrap.native'

document.addEventListener('turbolinks:load', () => {
  BSN.initCallback(document.body)
})
