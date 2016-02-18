app = angular.module('myApp')

app.controller 'contentCtrl',['$scope' ,'PostService', ($scope, PostService)->
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
    $scope.templateAction()
    changeSettings(false, false, false)

  $scope.videoUrl = ''
  $scope.templateAction = () ->
    tags = $scope.tags.split(" ")
    PostService.saveNewPost
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      template: $scope.template
      img: if ImageService.imagelist[0] then ImageService.imagelist[0].base64 else ''
      videoLink: $scope.videoUrl
      map: PostService.mapCoordinates

  $scope.showFirstTemplate = ->
    changeSettings(true, false, false, 'photo')
    return
  $scope.showSecondTemplate = ->
    changeSettings(false, true, false, 'video')
    return
  $scope.showThirdTemplate = ->
    changeSettings(false, false, true, 'map')
    return

  changeSettings = (first, second, third, template) ->
    $scope.firstPost = first
    $scope.secondPost = second
    $scope.thirdPost = third
    $scope.template = template
    return

  return
]