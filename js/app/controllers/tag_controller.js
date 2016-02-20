// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('tagController', [
    '$scope', '$timeout', 'getTags', function($scope, $timeout, getTags) {
      var poll;
      poll = function() {
        getTags.then(function(tags) {
          return $scope.words = tags;
        });
      };
      poll();
      $timeout(poll, 5000);
    }
  ]);

}).call(this);

//# sourceMappingURL=tag_controller.js.map
