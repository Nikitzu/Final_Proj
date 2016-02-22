app = angular.module('myApp')

app.factory 'updateFactory', ($http) ->
  (user) ->
    $http.post('http://localhost:3000/update', user)

app.factory 'updateSettingsFactory', ($http) ->
  (settings) ->
    $http.post('http://localhost:3000/updateuser', settings)