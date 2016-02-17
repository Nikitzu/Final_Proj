app = angular.module('myApp')

app.controller 'mainCtrl', [
  '$scope',
  '$routeParams'
  'getUser',
  'getPosts',
  'sendRating',
  'getHighRate',
  'TranslationService',
  ($scope, $routeParams, getUser, getPosts, sendRating, getHighRate) ->
    destinations =
      'user' : getPosts $scope.user
      'all' : getHighRate

    $scope.destination = $routeParams.destination
    $scope.posts = []
    $scope.predicate = 'score'
    $scope.user = 0
    getUser().then (data) ->
      $scope.user = data

    $scope.action = ->
      destinations[$scope.destination].get()
      .then (posts)->
        $scope.posts = posts.data
        return
      ,
        (err) ->
          console.log(err.data)
          return
      return
    $scope.action()
    $scope.changeRating = (post, inc) ->
      rating =
        id : post.id
        score : inc
      console.log rating
      sendRating(rating)
      .success (res) ->
        console.log res
        post.score = res.score
        return
      .error ->
        console.log "already rated"
      return
    $scope.order = (predicate) ->
      $scope.predicate = predicate
    return
]