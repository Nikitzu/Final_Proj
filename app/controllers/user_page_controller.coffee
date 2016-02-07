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
  $scope.showPost = false
  $scope.createPost = ->
    if $scope.showPost == false
      $scope.showPost = true
      $scope.createButton_text = "Add post"
    else
      $scope.showPost = false
      $scope.createButton_text = "Create post"
    return
  return