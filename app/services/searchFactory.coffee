app = angular.module('myApp')

app.factory 'searchFactory', ($http) ->
  (text) ->
    console.log("TEXT: ", text)
    $http.get('http://localhost:3000/search/'+text)