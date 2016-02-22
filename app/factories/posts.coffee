app = angular.module('myApp')

app.factory 'getPosts', ($http) ->
  (id)->
   get : ()->
      $http.get('http://localhost:3000/posts/'+id)

app.factory 'getPost', ($http) ->
  (id)->
    get : ()->
      $http.get('http://localhost:3000/post/'+id)

app.factory 'savePost', ($http)->
  (post) ->
    $http.post 'http://localhost:3000/post/save', post

app.factory 'delPostFactory', ($http)->
  (id) ->
    $http.delete 'http://localhost:3000/post/'+id