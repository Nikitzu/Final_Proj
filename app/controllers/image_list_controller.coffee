app = angular.module('myApp')
#TODO
app.controller 'ImageListController', ($scope, ImageService) ->
  $scope.images = ImageService.imagelist
  $scope.image = ImageService.image
  $scope.remove = ->
    ImageService.imagelist[0] =[]
    return

  $scope.selected = undefined

  return