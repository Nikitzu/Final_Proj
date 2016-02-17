app = angular.module('myApp')

app.factory 'getPosts', ($http) ->
  (id)->
   get : ()->
      $http.get('http://localhost:3000/posts/'+id)

app.factory 'getPost', ($http) ->
  (id)->
    get : ()->
      $http.get('http://localhost:3000/post/'+id)