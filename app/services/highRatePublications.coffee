app = angular.module('myApp')

app.factory 'HighRate', [
  '$http'
  ($http) ->
    $http.get('http://localhost:3000/rate')
]
#for collecting highrate publications