app = angular.module('myApp', [
  'ngRoute'
  'myApp.version'
  'angular-jqcloud'
  'ui.bootstrap'
  'hc.marked'
  'door3.css'
  'uiGmapgoogle-maps'
  'flow'
  'infinite-scroll'
])

app.config ($httpProvider) ->
  $httpProvider.defaults.useXDomain = true
  $httpProvider.defaults.withCredentials = true
  delete $httpProvider.defaults.headers.common['X-Requested-With']
  return