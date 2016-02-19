app = angular.module('myApp')

app.factory 'PhotoLoader', ($http) ->
  (data) ->
    $http.post 'http://localhost:3000/avatar', (data)