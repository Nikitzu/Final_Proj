app = angular.module('myApp')

app.factory 'getHighRateFactory', ['$http', ($http) ->
    get : () ->
      $http.get('http://localhost:3000/ratedarticles')
]