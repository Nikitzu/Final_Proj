app = angular.module('myApp')

app.controller 'ImageListController', ($scope, ImageService) ->
  $scope.images = ImageService.imagelist

  $scope.remove = (image) ->
    index = $scope.images.indexOf(image)
    $scope.images.splice index, 1
    console.log 'trying to remove!'
    if $scope.images.length == 0
      $scope.init_image()
    return

  $scope.select = (image) ->
    ImageService.file = $scope.images[$scope.images.indexOf(image)].file
    $scope.init_image true
    return

  return