app = angular.module('myApp')

app.factory 'postComment', ($http) ->
  (comment) ->
    $http.post('http://localhost:3000/comment/save', comment)

app.factory 'getComments', ($http) ->
  (id) ->
    $http.post('http://localhost:3000/comment/all', {id: id})

app.factory 'likeComment', ($http) ->
  (id) ->
    $http.post('http://localhost:3000/comment/like', {id: id})