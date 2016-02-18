app = angular.module('myApp')

app.factory 'getUser', ($http) ->
  ->
    $http.get('http://localhost:3000/currentUser')