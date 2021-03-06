// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('postView', [
    '$scope', '$routeParams', 'getPost', function($scope, $routeParams, getPost) {
      $scope.postPromise = getPost($routeParams.postId).get().then(function(post) {
        return $scope.post = post.data;
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=postView.js.map
