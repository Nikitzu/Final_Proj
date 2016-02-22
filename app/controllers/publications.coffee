app = angular.module('myApp')

app.controller 'publicationsController',['$scope' ,'PostService',($scope, PostService)->
  $scope.showSettings = false
  $scope.showInfo = true
  $scope.showPost = false
  $scope.changeSettings = ->
    $scope.showSettings = true
    $scope.showInfo = false
  $scope.saveSettings = ->
    $scope.showSettings = false
    $scope.showInfo = true
    return

  $scope.templatePanel = false

  $scope.firstPost = false
  $scope.secondPost = false
  $scope.thirdPost = false
  $scope.createPost = ->
    $scope.templatePanel = true
    $scope.firstPost = true
    $scope.showPost = true
  $scope.addPost = ->
    $scope.templatePanel = false
    $scope.showPost = false
    changeSettings(false, false, false, $scope.template)
    $scope.templateAction()

  $scope.templateAction = () ->
    PostService.saveNewPost $scope.templateData()
    return
  $scope.showFirstTemplate = ->
    changeSettings(true, false, false)
    return
  $scope.showSecondTemplate = ->
    changeSettings(false, true, false)
    return
  $scope.showThirdTemplate = ->
    changeSettings(false, false, true)
    return

  $scope.setData = (data) ->
    $scope.templateData = data
    return

  $scope.removePost = (post) ->
    PostService.deletePost(post.id).then (result)->
      if result
        idx = $scope.posts.indexOf(post)
        if idx > -1
          $scope.posts.splice(idx, 1)

  changeSettings = (first, second, third) ->
    $scope.firstPost = first
    $scope.secondPost = second
    $scope.thirdPost = third
    return

  $scope.setCategory = (category) ->
    $scope.category = category
    return
  return
]