const { environment } = require('@rails/webpacker')

const bsn = require('./loaders/bootstrap-native')
environment.loaders.append('bootstrap.native', bsn)
module.exports = environment
