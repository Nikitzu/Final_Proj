// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('userDataCtrl', [
    '$scope', 'getUser', function($scope, getUser) {
      $scope.user = null;
      getUser().then(function(data) {
        return $scope.user = data;
      });
    }
  ]);

}).call(this);

//# sourceMappingURL=user_data_controller.js.map
