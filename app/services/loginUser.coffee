app = angular.module('myApp')

app.factory 'loginUser', ($http) ->
  (user) ->
    $http.post 'http://localhost:3000/login', user