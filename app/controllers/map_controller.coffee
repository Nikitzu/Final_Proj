app = angular.module 'myApp'

app.controller 'mapCtrl', ($scope)->

  $scope.initialize = ->

    if navigator.geolocation
      navigator.geolocation.getCurrentPosition (position) ->
        $scope.latitude = position.coords.latitude
        $scope.longitude = position.coords.longitude
        console.log(latitude + ' ' + longitude)
        return
    else
    console.log('Geolocation API не поддерживается в вашем браузере')

    $scope.myLatlng = new (google.maps.LatLng)($scope.latitude, $scope.longitude)
    $scope.myOptions =
      zoom: 8
      center: $scope.myLatlng
      mapTypeId: google.maps.MapTypeId.ROADMAP
    $scope.map = new (google.maps.Map)(document.getElementById('map_canvas'), $scope.myOptions)
    console.log('map ready')
    return
  return