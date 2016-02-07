app = angular.module('myApp')
app.controller 'registrationCtrl', ($scope, userInfo)->
  $scope.userInfo = userInfo
  return