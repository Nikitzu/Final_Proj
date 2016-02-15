app = angular.module('myApp')

app.factory 'logoutUser', ($http)->
  ->
    $http.post 'http://localhost:3000/logout'
