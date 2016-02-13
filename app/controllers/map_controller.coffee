app = angular.module 'myApp'
#TODO: rewrite as a directive
app.controller 'mapCtrl', ($scope, $window) ->

  $scope.mapReady = ->
      $window.navigator.geolocation.getCurrentPosition (position) ->
        latitude = position.coords.latitude
        longitude = position.coords.longitude
        coords = new (google.maps.LatLng)(latitude, longitude)
        mapOptions =
          zoom: 15
          center: coords
          mapTypeControl: true
          navigationControlOptions: style: google.maps.NavigationControlStyle.SMALL
          mapTypeId: google.maps.MapTypeId.ROADMAP
        map = new (google.maps.Map)(document.getElementById('map-canvas'), mapOptions)
        marker = new (google.maps.Marker)(
          position: coords
          map: map
          title: 'Your current location!')
        return
  return