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

  #https://www.youtube.com/watch?v=OnuuYcqhzCE&index=18&list=PLBiPNxqFKPZI948_8dohmZxxjvJxYIXSx

  #https://www.youtube.com/embed/OnuuYcqhzCE?list=PLBiPNxqFKPZI948_8dohmZxxjvJxYIXSx
