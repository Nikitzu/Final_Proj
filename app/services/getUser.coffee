app = angular.module('myApp')

app.factory 'getUser', ($http) ->
  (id)->
    if id
    then $http.get('http://localhost:3000/user/'+id)
    else $http.get('http://localhost:3000/currentUser')