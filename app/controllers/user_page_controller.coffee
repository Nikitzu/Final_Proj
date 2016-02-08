app = angular.module('myApp')
app.controller 'userCtrl', ($scope)->
  $scope.changeButton_text = "Change settings"
  $scope.showSettings = false
  $scope.showInfo = true
  $scope.changeSettings = ->
    if $scope.showSettings == false
      $scope.showSettings = true
      $scope.showInfo = false
      $scope.changeButton_text = "Save changes"
    else
      $scope.showSettings = false
      $scope.showInfo = true
      $scope.changeButton_text = "Change settings"
    return

  $scope.createButton_text = "Create post"
  $scope.templatePanel = false
  changeSettings(false, false, false)
  $scope.createPost = ->
    if $scope.templatePanel == false
      $scope.templatePanel = true
      $scope.firstPost = true
      $scope.createButton_text = "Add post"
    else
      $scope.templatePanel = false
      $scope.createButton_text = "Create post"
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


  changeSettings(first, second, third) ->
    $scope.firstPost = first
    $scope.secondPost = second
    $scope.thirdPost = third
    return
  return