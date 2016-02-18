app = angular.module('myApp')
app.config ($routeProvider) ->
  $routeProvider
  .when('/',
    redirectTo: '/main/all')
  .when('/post/:postId',
    controller: 'viewTemplateController'
    templateUrl: '../app/postView.html')
  .when('/id/:id',
    controller: '',
    templateUrl: '../app/userView.html')
  .when('/user',
    controller: 'userCtrl'
    templateUrl: '../templates/user.html')
  .when('/login/:action',
    controller: 'RegistrationCtrl'
    templateUrl: '../app/registration.html')
  .when('/main/:destination',
    controller: 'mainCtrl'
    templateUrl: '../app/main.html')
  .when('/main/tag/:tag',
    controller: 'mainCtrl'
    templateUrl: '../app/main.html')
  .otherwise redirectTo: '/'
  return