// Generated by CoffeeScript 1.10.0
(function() {
  angular.module('myApp', ['ngRoute', 'myApp.version']).controller('MyCtr', function($scope) {
    $scope.world = 'Nik';
    $scope.changeButton_text = "Change settings";
    $scope.buttonSettings = false;
    $scope.changeSettings = function() {
      if ($scope.buttonSettings === false) {
        $scope.buttonSettings = true;
        $scope.changeButton_text = "Save changes";
      } else {
        $scope.buttonSettings = false;
        $scope.changeButton_text = "Change settings";
      }
    };
  });

}).call(this);

//# sourceMappingURL=apl.js.map
