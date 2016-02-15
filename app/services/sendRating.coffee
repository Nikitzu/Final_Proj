app = angular.module('myApp')

app.factory 'sendRating', ($http)->
  (rating)->
    $http.post 'localhost:3000/rate', rating