app = angular.module('myApp')
#TODO
app.controller 'mainCtrl', ['$http', '$scope', 'UserDataService', ($http, $scope, UserDataService) ->
  $scope.world = 'Nik'
  $scope.posts = []
  $http.get('http://localhost:3000/currentUser').then((data)->
    console.log(data.data)
    UserDataService.user = data.data
    return
  )
  $scope.action = () ->
    $http.get('http://localhost:3000/posts/'+ UserDataService.user.authId).then( (data)->
      console.log(data.data)
      $scope.posts = data.data
      return
  )
  return
]