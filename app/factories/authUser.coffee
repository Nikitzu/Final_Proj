app = angular.module('myApp')

app.factory 'logoutUser', ($http)->
  ->
    $http.post 'http://localhost:3000/logout'

app.factory 'loginUser', ($http) ->
  (user) ->
    $http.post 'http://localhost:3000/login', user

app.factory 'signupUser', ($http) ->
  (user) ->
    $http.post 'http://localhost:3000/registry', user
