app = angular.module('myApp')

app.controller 'RegistrationCtrl', ['$scope', '$routeParams', 'UserDataService', 'signupUser', 'loginUser', ($scope, $routeParams,UserDataService, signupUser, loginUser)->
  $scope.about = ''
  $scope.action = $routeParams.action
  $scope.actions =
    'signup': ->
      signupUser
        email: $scope.email,
        password: $scope.password,
        username: $scope.name,
        surname: $scope.surname,
        about: $scope.about
    'login': ->
      loginUser
        email: $scope.email,
        password: $scope.password

  $scope.performAction = ->
    $scope.actions[$scope.action]()
    .success (data) ->
      UserDataService.user = data
      window.location.href = 'http://localhost:8000/app/#/'
      return
  return
]