app = angular.module('myApp')

app.controller 'rateCtrl', ['$scope', 'getHighRate', ($scope, getHighRate)->
  getHighRate.success (data) ->
    $scope.postList = data
    return
  return
]