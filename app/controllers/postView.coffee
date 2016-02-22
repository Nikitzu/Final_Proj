app = angular.module('myApp')
app.controller 'postView', [
  '$scope'
  '$routeParams'
  'getPost'
  ($scope, $routeParams, getPost) ->
    $scope.postPromise = getPost($routeParams.postId).get().then (post) ->
      $scope.post = post.data
    return
]