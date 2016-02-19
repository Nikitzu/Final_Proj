app = angular.module('myApp')
app.factory 'delPost', ($http)->
  (id) ->
    $http.delete 'http://localhost:3000/post/'+id