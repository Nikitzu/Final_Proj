app = angular.module('myApp')

app.factory 'getPosts', ($http) ->
  (authId)->
    $http.get('http://localhost:3000/posts/'+authId)