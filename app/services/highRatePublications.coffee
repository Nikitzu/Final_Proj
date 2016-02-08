app = angular.module('myApp')

app.factory 'HighRate', [
  '$http'
  ($http) ->
    $http.get('http://local.host:3000/rate')
]