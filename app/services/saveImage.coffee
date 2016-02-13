app = angular.module('myApp')
app.factory 'saveImage', ($http)->
  (post) ->
    $http.post 'http://localhost:3000/post/save', post
