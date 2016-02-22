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

app.filter 'byCategory', ->
  (items_, category) ->
    result = []
    if !category or category is '' then return items_ else
      for item in items_
        if item.category is category then result.push item
    return result

app.controller 'mainController', [
  '$scope',
  '$routeParams'
  'getUserData',
  'getPosts',
  'rateCreative',
  'getHighRateFactory',
  'SearchService',
  ($scope, $routeParams, getUserData, getPosts, rateCreative, getHighRateFactory, SearchService) ->

    $scope.destination = $routeParams.destination
    $scope.posts = []
    $scope.predicate = 'score'
    $scope.user = null
    userId = if $scope.destination is 'id' then $routeParams.param else null
    getUserData(userId).then (data) ->
      $scope.user = data.data
    .then ->
      $scope.checkPosts()
    , ->
      $scope.checkPosts()

    $scope.action = ->
      $scope.destinations[$scope.destination].get()
      .then (posts)->
        posts.data.map (post) ->
          post.createdAt = Date.parse(post.createdAt)
        $scope.posts = posts.data
        return
      return

    $scope.changeRating = (post, inc) ->
      if !post.ratable
      then return
      post.ratable = false
      rating =
        id : post.id
        score : inc
      rateCreative(rating)
      .success (res) ->
        post.score = res.score
        return
      return

    $scope.checkPosts = () ->
      if SearchService.posts
        $scope.posts = SearchService.posts
        SearchService.posts = null
      else
        $scope.destinations =
          'user' : getPosts if $scope.user then $scope.user.id else 0
          'all' : getHighRateFactory
          'id' : getPosts(if $routeParams.param then $routeParams.param else 999)
        if $routeParams.destination is 'tag'
          $scope.filteringTag = $routeParams.param
          $scope.destination = 'all'
        if $routeParams.destination is 'category'
          $scope.filteringCategory = $routeParams.param
          $scope.destination = 'all'
        $scope.action()
      return

    $scope.order = (predicate) ->
      $scope.predicate = predicate
    return
]