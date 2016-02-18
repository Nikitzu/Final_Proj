app = angular.module('myApp')  
ctor = ($scope, ImageService, PostService)->
  dataFactory = ->
  console.log($scope.title, $scope.tags)
  tags = $scope.tags.split(" ")
    data =
        title: $scope.title, 
        description: $scope.description, 
        article: $scope.article, 
        tags: tags.map (tag)-> 
          {name: tag} 
  #      template: 'photo' 
        img: if ImageService.imagelist[0] then ImageService.imagelist[0].base64 else '' 
        map: PostService.mapCoordinates 
  $scope.setData(data) 
  return 

app.controller 'PhotoTemplateCtrl', ['$scope', 'ImageService', 'PostService', ctor]
