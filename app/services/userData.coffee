app = angular.module('myApp')

app.service 'UserDataService', ->
  this.user = null
  return