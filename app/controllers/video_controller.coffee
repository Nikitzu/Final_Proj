app = angular.module('myApp')

app.filter 'trustAsResourceUrl', [
  '$sce'
  ($sce) ->
    (val) ->
      $sce.trustAsResourceUrl val
]

app.controller 'videoCtrl', ($scope)->
  $scope.embeddify = (videoUrl)->
    x = 1
    videoUrl.replace('watch?v=','embed/')
  return
