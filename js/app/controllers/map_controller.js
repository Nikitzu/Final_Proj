// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.config(function(uiGmapGoogleMapApiProvider) {
    uiGmapGoogleMapApiProvider.configure({
      v: '3',
      libraries: 'weather,geometry,visualization'
    });
  });

  app.controller('mapCtrl', [
    '$scope', '$window', 'uiGmapGoogleMapApi', 'PostService', function($scope, $window, uiGmapGoogleMapApi, PostService) {
      $window.navigator.geolocation.getCurrentPosition(function(position) {
        PostService.mapCoordinates.currentY = $scope.latitude = position.coords.latitude;
        PostService.mapCoordinates.currentX = $scope.longitude = position.coords.longitude;
        return console.log($scope.latitude, $scope.longitude);
      });
      $scope.mapReady = function() {
        return uiGmapGoogleMapApi.then(function() {
          $scope.map = {
            center: {
              latitude: $scope.latitude,
              longitude: $scope.longitude
            },
            zoom: 5,
            markers: [],
            events: {
              click: function(map, eventName, originalEventArgs) {
                var e, lat, lon, marker;
                e = originalEventArgs[0];
                PostService.mapCoordinates.pointY = lat = e.latLng.lat();
                PostService.mapCoordinates.pointX = lon = e.latLng.lng();
                marker = {
                  id: Date.now(),
                  coords: {
                    latitude: lat,
                    longitude: lon
                  }
                };
                $scope.map.markers[0] = marker;
                console.log($scope.map.markers);
                $scope.$apply();
              }
            }
          };
          $scope.options = {
            scrollwheel: false
          };
          return $scope.marker = {
            id: 0,
            coords: {
              latitude: $scope.latitude,
              longitude: $scope.longitude
            },
            options: {
              icon: '../../source/assets/img/blue_marker.png'
            }
          };
        });
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=map_controller.js.map
