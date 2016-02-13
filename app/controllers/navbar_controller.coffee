app = angular.module('myApp')
#TODO
app.controller 'NavBarController', ['$http', '$scope', 'UserDataService', ($http, $scope, UserDataService)->
  $scope.action = () ->
    $http.post('http://localhost:3000/logout').then( ()->
      console.log(UserDataService.user)
      UserDataService.user = null
      window.location.href = 'http://localhost:8000/app/#/'
      return
    )
  $scope.user = UserDataService.user
  return
]