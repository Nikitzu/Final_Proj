app = angular.module('myApp')

app.controller 'RegistrationCtrl', ['$http', '$scope', '$routeParams', 'UserDataService', ($http, $scope, $routeParams,UserDataService)->
  $scope.about = ''
  $scope.action = $routeParams.action
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
      UserDataService.user = data
      window.location.href = 'http://localhost:8000/app/#/login/login'
      return
  return
]