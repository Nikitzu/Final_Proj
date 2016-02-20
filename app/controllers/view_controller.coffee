app = angular.module('myApp')
app.controller 'viewTemplateController', [
  '$scope'
  '$routeParams'
  'getPost'
  ($scope, $routeParams, getPost) ->
    $scope.postPromise = getPost($routeParams.postId).get().then (post) ->
      console.log('get post',post)
      $scope.post = post.data
    return
]