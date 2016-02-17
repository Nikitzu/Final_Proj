app = angular.module('myApp')

app.controller 'NavBarController', ['$scope', 'UserDataService', 'logoutUser', ($scope, UserDataService, logoutUser)->
  $scope.logout = ->
    logoutUser().then ->
      console.log(UserDataService.user)
      UserDataService.user = null
      window.location.href = 'http://localhost:8000/app/#/'
      return
  $scope.user = UserDataService.user
  UserDataService.loadUser().then( (data) ->
    console.log(data)
    UserDataService.user = data
    $scope.user = data

  )
  return
]