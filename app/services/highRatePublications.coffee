app = angular.module('myApp')

app.factory 'getHighRate', ['$http', ($http) ->
    get : () ->
      $http.get('http://localhost:3000/ratedarticles')
]