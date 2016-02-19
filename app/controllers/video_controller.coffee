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
      $scope.resUrl = videoUrl.replace('watch?v=','embed/')
      $scope.resUrl.replace('&index=18&', '?')
      $scope.resUrl.replace('&','?')

  dataFactory = ->
    tags = if $scope.tagsMap then $scope.tagsMap.split(" ") else []
    data =
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      template: 'video'
      videoLink: $scope.resUrl
  $scope.postVideo  = () ->
    $scope.setData(dataFactory)
    $scope.addPost()
  return