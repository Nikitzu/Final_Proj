app = angular.module('myApp')

ctor = ($scope, ImageService, saveImage)->
  action = ->
    console.log "Child Scope", ImageService.imagelist[0].base64
    saveImage
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      template: 'photo'
      img: ImageService.imagelist[0].base64
  $scope.setAction(action)
  return
app.controller 'PhotoTemplateCtrl', ['$scope', 'ImageService', 'saveImage', ctor]

