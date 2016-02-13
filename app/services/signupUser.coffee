app = angular.module('myApp')

app.factory 'signupUser', ($http) ->
  (user) ->
    $http.post 'http://localhost:3000/registry', user
