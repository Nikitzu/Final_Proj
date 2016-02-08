app = angular.module('myApp')

app.filter 'trustAsResourceUrl', [
  '$sce'
  ($sce) ->
    (val) ->
      $sce.trustAsResourceUrl val
]


app.controller 'videoCtrl', ($scope, $sce)->
  $scope.embeddify = (videoUrl)->
    videoUrl.replace('watch?v=','embed/')
  return