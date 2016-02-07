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
  $scope.firstPost = false
  $scope.secondPost = false
  $scope.thirdPost = false
  $scope.createPost = ->
    if $scope.templatePanel == false
      $scope.templatePanel = true
      $scope.firstPost = true
      $scope.createButton_text = "Add post"
    else
      $scope.templatePanel = false
      $scope.firstPost = false
      $scope.secondPost = false
      $scope.thirdPost = false
      $scope.createButton_text = "Create post"
    return

  $scope.showFirstTemplate = ->
    $scope.firstPost = true
    $scope.secondPost = false
    $scope.thirdPost = false
    return
  $scope.showSecondTemplate = ->
    $scope.firstPost = false
    $scope.secondPost = true
    $scope.thirdPost = false
    return
  $scope.showThirdTemplate = ->
    $scope.firstPost = false
    $scope.secondPost = false
    $scope.thirdPost = true
    return
  return