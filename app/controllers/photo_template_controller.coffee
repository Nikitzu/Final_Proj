app = angular.module('myApp')
ctor = ($http, $scope, $routeParams,UserDataService)->
  action = ->
    console.log "Child Scope"
    tags = $scope.tags.split " "
    $http.post 'http://localhost:3000/registry', {
      title: $scope.title,
      description: $scope.description,
      article: $scope.article,
      tags: tags
    }
  $scope.setAction(action)
  return
app.controller 'PhotoTemplateCtrl', ['$http', '$scope', '$routeParams', 'UserDataService', ctor]