app = angular.module('myApp')

app.filter 'trustAsResourceUrl', [
  '$sce'
  ($sce) ->
    (val) ->
      $sce.trustAsResourceUrl val
]
app.controller 'videoCtrl', ($scope)->
  $scope.embeddify = (videoUrl)->
      resUrl = videoUrl.replace('watch?v=','embed/')
      resUrl.replace('&index=18&', '?')
      resUrl.replace('&','?')
  return