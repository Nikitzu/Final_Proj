app = angular.module('myApp')

app.factory 'UserData', [
  '$http'
  ($http) ->
    $http.get('http://')
    .success((data) ->
      data)
    .error ((err) ->
      err)
]