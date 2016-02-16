app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    redirectTo: '/main/all'
  )
  .when('/user',
    controller: 'userCtrl'
    templateUrl: '../templates/user.html')
  .when('/login/:action',
    controller: 'RegistrationCtrl'
    templateUrl: '../app/registration.html')
  .when('/main/:destination',
    controller: 'mainCtrl'
    templateUrl: '../app/main.html')
  .otherwise redirectTo: '/'
  return