app = angular.module 'myApp'

app.config (uiGmapGoogleMapApiProvider) ->
  uiGmapGoogleMapApiProvider.configure
    v: '3.20'
    libraries: 'weather,geometry,visualization'
  return

app.controller 'mapCtrl', ($scope) ->
  $scope.map =
    center:
      latitude: 51.219053
      longitude: 4.404418
    zoom: 14
  $scope.options = scrollwheel: false
  return