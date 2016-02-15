app = angular.module('myApp')

app.controller 'userCtrl', ($scope)->
  $scope.changeButton_text = "Settings"
  $scope.showSettings = false
  $scope.showInfo = true
  $scope.showPost = false
  $scope.changeSettings = ->
    if $scope.showSettings == false
      $scope.showSettings = true
      $scope.showInfo = false
      $scope.changeButton_text = "Save"
    else
      $scope.showSettings = false
      $scope.showInfo = true
      $scope.changeButton_text = "Settings"
    return

  $scope.createButton_text = "Create post"
  $scope.templatePanel = false
  $scope.firstPost = false
  $scope.secondPost = false
  $scope.thirdPost = false
  $scope.createPost = ->
    if $scope.templatePanel == false
      $scope.templatePanel = true
      $scope.firstPost = true
      $scope.createButton_text = "Add post"
      $scope.showPost = true
    else
      $scope.templatePanel = false
      $scope.createButton_text = "Create post"
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