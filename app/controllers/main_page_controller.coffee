app = angular.module('myApp')
app.controller 'mainCtrl', ['$http', '$scope', ($http, $scope) ->
  $scope.world = 'Nik'
  $scope.posts = []
  $scope.action = () ->
    $http.get('http://localhost:3000/posts/'+'12345').then( (data)->
      console.log(data.data)
      $scope.posts = data.data
      return
  )
  return
]