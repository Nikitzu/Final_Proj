app = angular.module('myApp')

app.factory 'getPosts', ($http) ->
  (user)->
   get : ()->
      $http.get('http://localhost:3000/posts/'+user.authId)
