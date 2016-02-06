app = angular.module('myApp')

app.controller 'RegistrationCtrl', ($http, $scope)->
  $scope.about = ''
  $scope.submit = ->
    $http.post('http://local.host:3000/registry', { email: $scope.email, password: $scope.password, username: $scope.name, surname: $scope.surname, about: $scope.about})
  return