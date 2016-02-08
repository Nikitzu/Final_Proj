app = angular.module('myApp')

app.factory 'UserData', [
  '$http'
  ($http) ->
    $http.get('http://local.host:3000/host')
]