app = angular.module 'myApp'

app.config (uiGmapGoogleMapApiProvider) ->
  uiGmapGoogleMapApiProvider.configure
    v: '3'
    libraries: 'weather,geometry,visualization'
  return

app.controller 'mapCtrl', ($scope, $window, uiGmapGoogleMapApi) ->
  $window.navigator.geolocation.getCurrentPosition (position) ->
    $scope.latitude = position.coords.latitude
    $scope.longitude = position.coords.longitude
    console.log($scope.latitude, $scope.longitude)
  $scope.mapReady= ->
    uiGmapGoogleMapApi.then ->
      $scope.map =
        center:
          latitude: $scope.latitude
          longitude: $scope.longitude
        zoom: 5
        markers: []
        events: click: (map, eventName, originalEventArgs) ->
          e = originalEventArgs[0]
          lat = e.latLng.lat()
          lon = e.latLng.lng()
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