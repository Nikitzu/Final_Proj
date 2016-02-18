app = angular.module('myApp')

app.controller 'contentCtrl',['$scope' ,'PostService', 'ImageService', ($scope, PostService, ImageService)->
  $scope.showSettings = false
  $scope.showInfo = true
  $scope.showPost = false
 # $scope.tags = $scope.title = $scope.description = $scope.article = ''
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
  $scope.template = 'photo'
  $scope.createPost = ->
    $scope.templatePanel = true
    $scope.firstPost = true
    $scope.showPost = true
  $scope.addPost = ->
    $scope.templatePanel = false
    $scope.showPost = false
    changeSettings(false, false, false, $scope.template)
    $scope.templateAction()
    changeSettings(false, false, false, $scope.template)

  $scope.videoUrl = ''
  $scope.templateAction = () ->

    $scope.templateData.template = $scope.template
    PostService.saveNewPost $scope.templateData
    return
  $scope.showFirstTemplate = ->
    changeSettings(true, false, false, 'photo')
    return
  $scope.showSecondTemplate = ->
    changeSettings(false, true, false, 'video')
    return
  $scope.showThirdTemplate = ->
    changeSettings(false, false, true, 'map')
    return

  $scope.setData = (data) ->
    $scope.templateData = data
    return
  changeSettings = (first, second, third, template) ->
    $scope.firstPost = first
    $scope.secondPost = second
    $scope.thirdPost = third
    $scope.template = template
    return

  return
]