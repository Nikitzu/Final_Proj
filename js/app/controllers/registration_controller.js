// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('RegistrationCtrl', [
    '$http', '$scope', '$routeParams', 'UserDataService', function($http, $scope, $routeParams, UserDataService) {
      $scope.about = '';
      $scope.action = $routeParams.action;
      $scope.actions = {
        'signup': function() {
          return $http.post('http://localhost:3000/registry', {
            email: $scope.email,
            password: $scope.password,
            username: $scope.name,
            surname: $scope.surname,
            about: $scope.about
          });
        },
        'login': function() {
          return $http.post('http://localhost:3000/login', {
            email: $scope.email,
            password: $scope.password
          });
        }

        /*
          $scope.submit = ->
        $http.post('http://local.host:3000/registry', {
          email: $scope.email,
          password: $scope.password,
          username: $scope.name,
          surname: $scope.surname,
          about: $scope.about
        })
         */
      };
      $scope.performAction = function() {
        return $scope.actions[$scope.action]().success(function(data) {
          UserDataService.user = data;
          window.location.href = 'http://localhost:8000/app/#/login/login';
        });
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=registration_controller.js.map
