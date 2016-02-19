app = angular.module 'myApp'

app.controller 'mapViewCtrl',[
  '$scope',
  'uiGmapGoogleMapApi',
  ($scope, uiGmapGoogleMapApi) ->
    dataFactory = ->
      markerCoords = $scope.post.map
      uiGmapGoogleMapApi.then ->
        $scope.map =
          center:
            latitude: markerCoords[1]
            longitude: markerCoords[0]
          zoom: 4
        $scope.options = scrollwheel: false

        $scope.marker2 =
          id: 1
          coords:
            latitude: markerCoords[3]
            longitude: markerCoords[2]

        $scope.marker =
          id: 0
          coords:
            latitude: markerCoords[1]
            longitude: markerCoords[0]
          options:
            icon: '../../source/assets/img/blue_marker.png'
    $scope.setData(dataFactory)
    return
]