app = angular.module 'myApp'

app.controller 'mapViewCtrl',[
  '$scope',
#  '$window',
  'uiGmapGoogleMapApi',
#  'PostService',
#  'ImageService',
  ($scope, uiGmapGoogleMapApi) ->
#    $scope.mapCoordinates =
#      currentX: 0
#      currentY: 0
#      pointX: 0
#      pointY: 0
#    dataFactory = ->
#      tags = if $scope.tagsMap then $scope.tagsMap.split(" ") else []
#      data =
#        title: $scope.titleMap,
#        description: $scope.descriptionMap,
#        article: $scope.articleMap,
#        tags: tags.map (tag)->
#          {name: tag}
#        img: if ImageService.imagelist[0] then ImageService.imagelist[0].base64 else ''
#        map: $scope.mapCoordinates
#        template: 'map'
#    $scope.postMap  = () ->
#      $scope.setData(dataFactory)
#      $scope.addPost()

    uiGmapGoogleMapApi.then ->
      $scope.map =
        center:
          latitude: 60
          longitude: 60
        zoom: 5
      $scope.options = scrollwheel: false

      $scope.marker2 =
        id: 1
        coords:
          latitude: 65
          longitude: 65

      $scope.marker =
        id: 0
        coords:
          latitude: 60
          longitude: 60
        options:
          icon: '../../source/assets/img/blue_marker.png'
    return
]