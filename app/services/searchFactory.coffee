app = angular.module('myApp')

app.factory 'searchFactory', ($http) ->
  (text) ->
    $http.get('http://localhost:3000/search/'+text)