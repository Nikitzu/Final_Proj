app = angular.module('myApp')
app.controller 'MyCtr', ($scope)->
  $scope.world = 'Nik'
  $scope.changeButton_text = "Change settings"
  $scope.buttonSettings = false
  $scope.changeSettings = ->
    if $scope.buttonSettings == false
      $scope.buttonSettings = true
      $scope.changeButton_text = "Save changes"
    else
      $scope.buttonSettings = false
      $scope.changeButton_text = "Change settings"
    return
  return