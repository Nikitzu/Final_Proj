app = angular.module('myApp')

app.factory 'UserData', [
  '$http'
  ($http) ->
    $http.get('https://')
    .success((data) ->
      data)
    .error ((err) ->
      err)
]