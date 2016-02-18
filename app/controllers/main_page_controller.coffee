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
  'getUser',
  'getPosts',
  'sendRating',
  'getHighRate',
  'SearchService',
  ($scope, $routeParams, getUser, getPosts, sendRating, getHighRate, SearchService) ->


    $scope.destination = $routeParams.destination
    $scope.posts = []
    $scope.predicate = 'score'
    $scope.user = null
    getUser().then (data) ->
      $scope.user = data.data
    .then ->
      $scope.destinations =
        'user' : getPosts if $scope.user then $scope.user.id else 0
        'all' : getHighRate
      $scope.action()
    $scope.filteringTag = 'test'

    $scope.action = ->
      $scope.destinations[$scope.destination].get()
      .then (posts)->
        $scope.posts = posts.data
        return
      ,
        (err) ->
          console.log(err.data)
          return
      return
    console.log("POSTS = ", SearchService.posts)

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