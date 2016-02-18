app = angular.module('myApp')

app.controller 'contentCtrl', ($scope)->
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
    $scope.firstPost = false
    $scope.secondPost = false
    $scope.thirdPost = false
    $scope.action()
    .success ->
      console.log "nebeda"
      return
    .error ->
      console.log "beda"
    changeSettings(false, false, false)


  $scope.showFirstTemplate = ->
    changeSettings(true, false, false)
    return
  $scope.showSecondTemplate = ->
    changeSettings(false, true, false)
    return
  $scope.showThirdTemplate = ->
    changeSettings(false, false, true)
    return

  $scope.action = {}
  $scope.setAction = (action)->
    $scope.action = action
    return

  changeSettings = (first, second, third) ->
    $scope.firstPost = first
    $scope.secondPost = second
    $scope.thirdPost = third
    return

  return