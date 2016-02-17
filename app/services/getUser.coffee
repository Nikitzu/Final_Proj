app = angular.module('myApp')

app.factory 'getUser', ($http) ->
  console.log("USER")
  ->
    $http.get('http://localhost:3000/currentUser')