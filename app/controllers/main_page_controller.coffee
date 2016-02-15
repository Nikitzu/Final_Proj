app = angular.module('myApp')

app.factory 'sendRating', ($http)->
  (rating)->
    $http.post 'localhost:3000/rate', rating

app.controller 'mainCtrl', [
  '$scope',
  '$routeParams'
  'UserDataService',
  'getUser',
  'getPosts',
  'sendRating',
  'getHighRate'
  ($scope, $routeParams, UserDataService, getUser, getPosts, sendRating, getHighRate) ->

    $scope.destinations =
      'user' : getPosts UserDataService.user
      'all' : getHighRate

    $scope.posts = []
    $scope.action = () ->
      $scope.destinations[$routeParams.destination].get()
      .then (posts)->
        console.log posts.data
        $scope.posts = posts.data
        return
      ,
        (err) ->
          console.log(err.data)
          return
      return

    $scope.rate = (post) ->
      rating =
        id : post.id
        score : post.score
      console.log rating
      sendRating(rating)
      .success (meanRating) ->
        console.log meanRating
        return

      return
    return
]