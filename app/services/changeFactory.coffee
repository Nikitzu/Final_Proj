app = angular.module('myApp')

app.factory 'changeFactory', ($http) ->
  (settings) ->
    $http.post('http://localhost:3000/updateuser', settings)