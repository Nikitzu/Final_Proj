app = angular.module('myApp')

app.filter 'trustAsResourceUrl', [
  '$sce'
  ($sce) ->
    (val) ->
      $sce.trustAsResourceUrl val
]
app.controller 'videoCtrl', ($scope)->
  $scope.embeddify = (videoUrl)->
    if videoUrl
      resUrl = videoUrl.replace('watch?v=','embed/')
      resUrl.replace('&index=18&', '?')
      resUrl.replace('&','?')

  dataFactory = ->
    tags = if $scope.tagsMap then $scope.tagsMap.split(" ") else []
    data =
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      template: 'video'
      videoLink: $scope.videoUrl
  $scope.postVideo  = () ->
    $scope.setData(dataFactory)
    $scope.addPost()
  return