app = angular.module('myApp')

app.controller 'tagController',['$scope', '$timeout', 'getTags', ($scope, $timeout, getTags) ->
  poll = ->
    getTags.then (tags) ->
      console.log("TAGS HERE",tags)
      $scope.words = tags
    return
  poll()
  $timeout poll, 5000
  $scope.colors = [
    '#800026'
    '#bd0026'
    '#e31a1c'
    '#fc4e2a'
    '#fd8d3c'
    '#feb24c'
    '#fed976'
  ]

  return
]