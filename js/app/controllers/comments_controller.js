// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('postComment', function($http) {
    return function(comment) {
      return $http.post('http://localhost:3000/comment/save', comment);
    };
  });

  app.factory('getComments', function($http) {
    return function(id) {
      return $http.post('http://localhost:3000/comment/all', {
        id: id
      });
    };
  });

  app.factory('likeComment', function($http) {
    return function(id) {
      return $http.post('http://localhost:3000/comment/like', {
        id: id
      });
    };
  });

  app.controller('viewCommentCtrl', [
    '$scope', 'getComments', 'likeComment', function($scope, getComments, likeComment) {
      $scope.postPromise.then(function() {
        getComments($scope.post.id).then(function(comments) {
          console.log("AAAAAA", comments.data);
          $scope.reviews = comments.data;
        });
      });
      $scope.like = function(id) {
        console.log('LIKE');
        likeComment(id).then(function() {
          return console.log('LIKE NEBEDA');
        }, function() {
          console.log('LIKE BEDA');
        });
      };
    }
  ]);

  app.controller('addCommentCtrl', [
    '$scope', 'getUser', 'postComment', function($scope, getUser, postComment) {
      getUser().then(function(data) {
        $scope.user = data.data;
        $scope.createNewReview = function() {
          $scope.viewComment = {
            author: $scope.user,
            id: $scope.post.id
          };
        };
        $scope.postPromise.then(function() {
          return $scope.createNewReview();
        });
        return $scope.addReview = function() {
          console.log("ADDREVIEW");
          postComment($scope.viewComment).then(function(comment) {
            $scope.reviews.push(comment.data);
            console.log("NEBEDA", comment.data);
            $scope.createNewReview();
          }, function() {
            return console.log("BEDA");
          });
        };
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=comments_controller.js.map
