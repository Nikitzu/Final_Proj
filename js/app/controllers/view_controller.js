// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('viewTemplateController', [
    '$scope', 'UserDataService', 'getPosts', function($scope, UserDataService, getPosts) {
      return getPosts({}).get().success(function(post) {
        return $scope.post = post;
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=view_controller.js.map
