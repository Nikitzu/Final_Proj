app = angular.module('myApp')

app.controller 'RegistrationCtrl', ['$http', '$scope', 'UserDataService', ($http, $scope, UserDataService)->
  $scope.about = ''
  $scope.action = 'login'
  $scope.actions =
    'signup': ->
      $http.post 'http://localhost:3000/registry', {
        email: $scope.email,
        password: $scope.password,
        username: $scope.name,
        surname: $scope.surname,
        about: $scope.about
      }
    'login': ->
      $http.post 'http://localhost:3000/login', {
        email: $scope.email,
        password: $scope.password
      }
    ###
  $scope.submit = ->
    $http.post('http://local.host:3000/registry', {
      email: $scope.email,
      password: $scope.password,
      username: $scope.name,
      surname: $scope.surname,
      about: $scope.about
    })
###
  $scope.performAction = ->

    $scope.actions[$scope.action]()
    .success (data) ->
      UserDataService.user = data.user

      return
  return
]