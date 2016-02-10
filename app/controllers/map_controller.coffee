app = angular.module 'myApp'

app.controller 'mapCtrl', ($scope)->

  $scope.mapReady = ->
    if navigator.geolocation
      navigator.geolocation.getCurrentPosition (position) ->
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
    else
    alert 'Geolocation API не поддерживается в вашем браузере'
  return