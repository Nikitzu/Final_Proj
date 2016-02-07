app = angular.module('myApp')
app.controller 'mainCtrl', ($scope, userInfo)->
  $scope.userInfo = userInfo
  $scope.world = 'Nik'
  return