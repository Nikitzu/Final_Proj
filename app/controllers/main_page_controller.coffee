app = angular.module('myApp')
app.filter 'byTag', ->
  (items, tag) ->
    result = []
   # console.log("FILTER HAS BYL APPLIED", tag)
    if !tag then items else
      for item in items
        currentTags = item.tags.map (tag) ->
          console.log tag.name
          tag.name
        if currentTags.indexOf(tag) isnt -1 then result.push item
    return result


app.controller 'mainCtrl', [
  '$scope',
  '$routeParams'
  'UserDataService',
  'getUser',
  'getPosts',
  'sendRating',
  'getHighRate',
  'TranslationService',
  ($scope, $routeParams, UserDataService, getUser, getPosts, sendRating, getHighRate) ->
    destinations =
      'user' : getPosts if UserDataService.user then UserDataService.user.id else 0
      'all' : getHighRate

    $scope.destination = $routeParams.destination
    $scope.posts = []
    $scope.predicate = 'score'
    $scope.filteringTag = 'test'

    $scope.action = ->
      destinations[$scope.destination].get()
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