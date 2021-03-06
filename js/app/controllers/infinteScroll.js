// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('infiniteScroll', function($scope) {
    $scope.limit = 6;
    $scope.loadMore = function() {
      if ($scope.posts.length > $scope.limit) {
        $scope.limit += 1;
      }
    };
    $scope.limitCom = 6;
    $scope.loadMoreComments = function() {
      return $scope.commentsPromise.then(function() {
        if ($scope.reviews.length > $scope.limitCom) {
          $scope.limitCom += 1;
        }
      });
    };
  });

}).call(this);

//# sourceMappingURL=infinteScroll.js.map
