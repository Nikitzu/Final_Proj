app = angular.module('myApp')

app.controller 'googleMapView', [
  '$scope'
  '$routeParams'
  'getPost'
  'uiGmapGoogleMapApi'
  ($scope, $routeParams, getPost, uiGmapGoogleMapApi) ->
    getPost($routeParams.postId).get().success (post) ->
      $scope.post = post
      if post.map
        mapFunction(post.map)

    mapFunction = (markerCoords) ->
      uiGmapGoogleMapApi.then ->
        $scope.map =
          center:
            latitude: markerCoords[1]
            longitude: markerCoords[0]
          zoom: 4
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
    return
]