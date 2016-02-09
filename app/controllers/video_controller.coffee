app = angular.module('myApp')

app.filter 'trustAsResourceUrl', [
  '$sce'
  ($sce) ->
    (val) ->
      $sce.trustAsResourceUrl val
]

app.controller 'videoCtrl', ($scope)->
  $scope.embeddify = (videoUrl)->
      $scope.resUrl = videoUrl.replace('watch?v=','embed/')
      $scope.resUrl.replace('&index=18&', '?')
  return
