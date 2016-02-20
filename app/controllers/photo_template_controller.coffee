app = angular.module('myApp')
ctor = ($scope, ImageService)->
  dataFactory = ->
    tags = if $scope.tags then $scope.tags.split(" ") else []
    img = if ImageService.imagelist[0] then ImageService.imagelist[0].base64 else ''
    data =
      category: $scope.category
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      img: img
      template: 'photo'
  $scope.postPhoto  = () ->
    $scope.setData(dataFactory)
    $scope.addPost()
  return

app.controller 'PhotoTemplateCtrl', ['$scope', 'ImageService', ctor]