app = angular.module('myApp')

app.controller 'tagController',['$scope', '$timeout', 'getTags', ($scope, $timeout, getTags) ->
  poll = ->
    getTags.then (tags) ->
      console.log("TAGS HERE",tags)
      $scope.words = tags
    return
  poll()
  $timeout poll, 5000

  return
]