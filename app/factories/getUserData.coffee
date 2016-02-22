app = angular.module('myApp')

app.factory 'getUserData', ($http) ->
  (id)->
    if id
    then $http.get('http://localhost:3000/user/'+id)
    else $http.get('http://localhost:3000/currentUser')

app.factory 'avatarFactory', ($http) ->
  (data) ->
    $http.post 'http://localhost:3000/avatar', (data)