app = angular.module 'myApp'

app.config (uiGmapGoogleMapApiProvider) ->
  uiGmapGoogleMapApiProvider.configure
    v: '3'
    libraries: 'weather,geometry,visualization'
  return

app.controller 'mapCtrl',[
  '$scope',
  '$window',
  'uiGmapGoogleMapApi',
  'PostService',
  'ImageService',
  ($scope, $window, uiGmapGoogleMapApi, PostService, ImageService) ->
    $scope.mapCoordinates =
      currentX: 0
      currentY: 0
      pointX: 0
      pointY: 0
    dataFactory = ->
      tags = if $scope.tagsMap then $scope.tagsMap.split(" ") else []
      data =
        title: $scope.titleMap,
        description: $scope.descriptionMap,
        article: $scope.articleMap,
        tags: tags.map (tag)->
          {name: tag}
        img: if ImageService.imagelist[0] then ImageService.imagelist[0].base64 else ''
        map: $scope.mapCoordinates
        template: 'map'
    $scope.postMap  = () ->
      $scope.setData(dataFactory)
      $scope.addPost()
    $window.navigator.geolocation.getCurrentPosition (position) ->
      $scope.mapCoordinates.currentY = $scope.latitude = position.coords.latitude
      $scope.mapCoordinates.currentX = $scope.longitude = position.coords.longitude
      console.log($scope.latitude, $scope.longitude)
    $scope.showMap = false

    $scope.mapReady = () ->
      uiGmapGoogleMapApi.then ->
        $scope.showMap = true
        $scope.map =
          center:
            latitude: $scope.latitude
            longitude: $scope.longitude
          zoom: 5
          markers: []
          events: click: (map, eventName, originalEventArgs) ->
            e = originalEventArgs[0]
            $scope.mapCoordinates.pointY = lat = e.latLng.lat()
            $scope.mapCoordinates.pointX = lon = e.latLng.lng()
            marker =
              id: Date.now()
              coords:
                latitude: lat
                longitude: lon
            $scope.map.markers[0] = marker
            console.log $scope.map.markers
            $scope.$apply()
            return
        $scope.options = scrollwheel: false

        $scope.marker =
          id: 0
          coords:
            latitude: $scope.latitude
            longitude: $scope.longitude
          options:
            icon: '../../source/assets/img/blue_marker.png'
      return
    return
]