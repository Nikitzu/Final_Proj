// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('rateCtrl', [
    '$scope', 'HighRate', function($scope, HighRate) {
      HighRate.success(function(data) {
        $scope.postList = data;
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=rate_publications.js.map
