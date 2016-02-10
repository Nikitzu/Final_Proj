app = angular.module 'myApp'

app.controller 'mapCtrl', ($scope)->

  $scope.initialize = ->
    $scope.myLatlng = new (google.maps.LatLng)(-34.397, 150.644)
    $scope.myOptions =
      zoom: 8
      center: $scope.myLatlng
      mapTypeId: google.maps.MapTypeId.ROADMAP
    $scope.map = new (google.maps.Map)(document.getElementById('map_canvas'), $scope.myOptions)
    console.log('map ready')
    return
  return