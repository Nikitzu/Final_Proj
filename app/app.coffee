app = angular.module('myApp', [
  'ngRoute'
  'myApp.version'
  'angular-jqcloud'
  'ui.bootstrap'
  'ngRateIt'
  'hc.marked'
  'door3.css'
])

app.config ($httpProvider) ->
  $httpProvider.defaults.useXDomain = true
  $httpProvider.defaults.withCredentials = true
  delete $httpProvider.defaults.headers.common['X-Requested-With']
  return
#  $httpProvider.defaults.headers.post = {}
#  $httpProvider.defaults.headers.put = {}
#  $httpProvider.defaults.headers.patch = {}
#  return
