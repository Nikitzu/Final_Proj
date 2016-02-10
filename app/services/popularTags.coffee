app = angular.module('myApp')

app.factory 'Tags', [
  '$http'
  ($http) ->
    $http.get('http://local.host:3000/tags', {withCredentials: true})
]
#for collecting tags