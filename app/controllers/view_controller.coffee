app = angular.module('myApp')
app.controller 'viewTemplateController', [
  '$scope'
  '$routeParams'
  'getPost'
  ($scope, $routeParams, getPost) ->
    getPost($routeParams.postId).get().success (post) ->
      $scope.post = post
      $scope.article = post.article
    return
]
return