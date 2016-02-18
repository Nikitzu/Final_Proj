app = angular.module('myApp')
app.factory 'savePost', ($http)->
  (post) ->
    $http.post 'http://localhost:3000/post/save', post
