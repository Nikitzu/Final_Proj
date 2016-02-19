app = angular.module('myApp')
ctor = ($scope, ImageService)->
  dataFactory = ->
    tags = if $scope.tagsMap then $scope.tagsMap.split(" ") else []
    data =
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      img: if ImageService.imagelist[0] then ImageService.imagelist[0].base64 else ''
      template: 'photo'
  $scope.postPhoto  = () ->
    $scope.setData(dataFactory)
    $scope.addPost()
  return

app.controller 'PhotoTemplateCtrl', ['$scope', 'ImageService', ctor]