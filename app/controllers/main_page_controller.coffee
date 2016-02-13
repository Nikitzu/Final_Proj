app = angular.module('myApp')

app.controller 'mainCtrl', [
  '$scope',
  'UserDataService',
  'getUser',
  'getPosts'
  ($scope, UserDataService, getUser, getPosts) ->

    $scope.posts = []

    getUser.then (user)->
      console.log('USER PRISHEL')
      UserDataService.user = user.data
      return
    ,
    (error) ->
      console.log('USER NEPRISHEL')
      console.log error.data
      return

    $scope.action = () ->
      getPosts(UserDataService.user.authId).then
      (posts)->
        console.log(posts.data)
        $scope.posts = posts.data
        return
    return
]