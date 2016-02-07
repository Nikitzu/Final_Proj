// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('userCtrl', function($scope) {
    $scope.changeButton_text = "Change settings";
    $scope.showSettings = false;
    $scope.showInfo = true;
    $scope.changeSettings = function() {
      if ($scope.showSettings === false) {
        $scope.showSettings = true;
        $scope.showInfo = false;
        $scope.changeButton_text = "Save changes";
      } else {
        $scope.showSettings = false;
        $scope.showInfo = true;
        $scope.changeButton_text = "Change settings";
      }
    };
    $scope.createButton_text = "Create post";
    $scope.showPost = false;
    $scope.createPost = function() {
      if ($scope.showPost === false) {
        $scope.showPost = true;
        $scope.createButton_text = "Add post";
      } else {
        $scope.showPost = false;
        $scope.createButton_text = "Create post";
      }
    };
  });

}).call(this);

//# sourceMappingURL=user_page_controller.js.map
