app = angular.module('myApp')
app.controller 'userDataCtrl',['$scope', 'getUser', ($scope, getUser)->
  $scope.user = null
  getUser().then (data) ->
    $scope.user = data
  return
]