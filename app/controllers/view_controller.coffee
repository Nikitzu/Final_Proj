app = angular.module('myApp')
app.controller 'viewTemplateController', [
  '$scope'
  '$routeParams'
  'getPost'
  ($scope, $routeParams, getPost) ->
    console.log($routeParams.postId)
    getPost($routeParams.postId).get().success (post) ->
      console.log('POST', post, 'END')
      $scope.post = post
      $scope.article = post.article
    return
]
return