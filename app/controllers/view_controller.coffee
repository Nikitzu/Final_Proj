app = angular.module('myApp')
app.controller 'viewTemplateController', [
  '$scope'
  '$routeParams'
  'getPost'
  ($scope, $routeParams, getPost) ->
    $scope.postPromise = getPost($routeParams.postId).get().then (post) ->
      $scope.post = post.data
    return
]