app = angular.module('myApp')

app.factory 'UserPublications', [
  '$http'
  ($http) ->
    $http.get('http://local.host:3000/publications')
]