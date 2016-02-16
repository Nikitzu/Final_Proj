app = angular.module('myApp')

app.controller 'mainCtrl', [
  '$scope',
  '$routeParams'
  'UserDataService',
  'getUser',
  'getPosts',
  'sendRating',
  'getHighRate',
  'TranslationService',
  ($scope, $routeParams, UserDataService, getUser, getPosts, sendRating, getHighRate, TranslationService) ->
    destinations =
      'user' : getPosts UserDataService.user
      'all' : getHighRate

    getUser.success (data) ->
      UserDataService.user = data

    $scope.posts = []
    $scope.predicate = 'score'
#    $scope.translation = TranslationService.translation
    $scope.$watch('')

    $scope.action = ->
      destinations[$routeParams.destination].get()
      .then (posts)->
        console.log posts.data
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