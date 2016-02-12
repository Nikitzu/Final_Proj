app = angular.module('myApp')
ctor = ($http, $scope, ImageService)->

  action = ->
    console.log "Child Scope", ImageService.imagelist[0].base64
    tags = $scope.tags.split " "
    $http.post 'http://localhost:3000/post/save', {
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags.map (tag)->
        {name: tag}
      template: 'photo'
      img: ImageService.imagelist[0].base64
    }
  $scope.setAction(action)
  return
app.controller 'PhotoTemplateCtrl', ['$http', '$scope', 'ImageService', ctor]

