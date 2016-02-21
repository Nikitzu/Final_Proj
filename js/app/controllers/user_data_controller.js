// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('userDataCtrl', [
    '$scope', 'getUser', 'updateFactory', function($scope, getUser, updateFactory) {
      $scope.user = null;
      getUser().then(function(data) {
        return $scope.user = data.data;
      });
      $scope.saveUserSettings = function() {
        var post;
        $scope.saveSettings();
        post = {
          firstName: $scope.user.firstName,
          lastName: $scope.user.lastName,
          about: $scope.user.about
        };
        return updateFactory(post);
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=user_data_controller.js.map
