// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('tagController', [
    '$scope', 'getTags', function($scope, getTags) {
      getTags.then(function(tags) {
        console.log("TAGS HERE", tags);
        return $scope.words = tags;
      });
      $scope.colors = ['#800026', '#bd0026', '#e31a1c', '#fc4e2a', '#fd8d3c', '#feb24c', '#fed976'];
    }
  ]);

}).call(this);

//# sourceMappingURL=tag_controller.js.map
