angular.module('myApp', [
  'ngRoute'
  'myApp.version'
]).controller 'MyCtr', ($scope)->
  $scope.world = 'Nik'
  return
