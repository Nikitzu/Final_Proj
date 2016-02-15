app = angular.module('myApp')

app.factory 'sendRating', ($http)->
  (rating)->
    $http.post 'http://localhost:3000/rate', rating