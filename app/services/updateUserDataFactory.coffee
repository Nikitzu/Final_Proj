app = angular.module('myApp')

app.factory 'updateFactory', ($http) ->
  (user) ->
    $http.post('http://localhost:3000/update', user)