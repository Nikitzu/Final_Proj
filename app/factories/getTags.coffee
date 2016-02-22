app = angular.module('myApp')

app.factory 'getTags', ($http) ->
  $http.get 'http://localhost:3000/tags'
  .then (data) ->
    data.data
