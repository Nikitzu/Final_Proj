// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('viewCommentCtrl', function($scope) {
    $scope.reviews = [];
    $scope.author = 'Artur';
    $scope.rate = 0;
  });

  app.controller('addCommentCtrl', function($scope) {
    this.viewComment = {
      rate: $scope.rate,
      author: $scope.author
    };
    this.createNewReview = function() {
      this.viewComment = {
        rate: $scope.rate,
        author: $scope.author
      };
    };
    this.addReview = function() {
      $scope.reviews.push(this.viewComment);
      this.createNewReview();
      console.log($scope.reviews);
    };
  });

}).call(this);

//# sourceMappingURL=comments_controller.js.map
