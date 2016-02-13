// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('mainCtrl', [
    '$http', '$scope', 'UserDataService', function($http, $scope, UserDataService) {
      $scope.world = 'Nik';
      $scope.posts = [];
      $http.get('http://localhost:3000/currentUser').then(function(data) {
        console.log(data.data);
        UserDataService.user = data.data;
      });
      $scope.action = function() {
        return $http.get('http://localhost:3000/posts/' + UserDataService.user.authId).then(function(data) {
          console.log(data.data);
          $scope.posts = data.data;
        });
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=main_page_controller.js.map
