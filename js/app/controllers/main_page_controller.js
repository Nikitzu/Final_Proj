// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('mainCtrl', [
    '$scope', 'UserDataService', 'getUser', 'getPosts', function($scope, UserDataService, getUser, getPosts) {
      $scope.posts = [];
      getUser.then(function(user) {
        console.log('USER PRISHEL');
        UserDataService.user = user.data;
      }, function(error) {
        console.log('USER NEPRISHEL');
        console.log(error.data);
      });
      $scope.action = function() {
        getPosts(UserDataService.user.authId).then;
        return function(posts) {
          console.log(posts.data);
          $scope.posts = posts.data;
        };
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=main_page_controller.js.map
