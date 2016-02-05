angular.module('myApp', [
  'ngRoute'
  'myApp.view1'
  'myApp.view2'
  'myApp.version'
]).controller 'MyCtr', ($scope)->
  $scope.world = 'Nik'
  return