app = angular.module('myApp')
app.filter 'byTag', ->
  (items, tag) ->
    result = []
    if !tag or tag is '' then return items else
      for item in items
        currentTags = item.tags.map (tag) ->
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

    console.log($routeParams.destination)
    $scope.destination = $routeParams.destination
    $scope.posts = []
    $scope.predicate = 'score'
    $scope.user = null
    getUser().then (data) ->
      $scope.user = data.data
    .then ->
      $scope.checkPosts()

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

    $scope.changeRating = (post, inc) ->
      rating =
        id : post.id
        score : inc
      sendRating(rating)
      .success (res) ->
        post.score = res.score
        return
      .error ->
        console.log "already rated"
      return

    $scope.checkPosts = () ->
      if SearchService.posts
        $scope.posts = SearchService.posts
        SearchService.posts = null
      else
        $scope.destinations =
          'user' : getPosts if $scope.user then $scope.user.id else 0
          'all' : getHighRate
        if $routeParams.destination is 'tag'
          $scope.filteringTag = $routeParams.tag
          $scope.destination = 'all'
        $scope.action()
      return

    $scope.order = (predicate) ->
      $scope.predicate = predicate
    return
]