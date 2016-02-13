app = angular.module('myApp')

app.factory 'logoutUser', ($http)->
  ->
    console.log('LOGGING OUT')
    $http.post 'http://localhost:3000/logout'
