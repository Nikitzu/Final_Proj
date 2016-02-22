app = angular.module('myApp')

app.factory 'rateCreative', ($http)->
  (rating)->
    $http.post 'http://localhost:3000/rate', rating