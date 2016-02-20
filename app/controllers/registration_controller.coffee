app = angular.module('myApp')

app.controller 'RegistrationCtrl', ['$scope', '$routeParams', 'signupUser', 'loginUser', ($scope, $routeParams, signupUser, loginUser)->
  $scope.about = ''
  $scope.action = $routeParams.action


  $scope.showPopUpMsg = false

  $scope.openPopUp = (text) ->
    $scope.showPopUpMsg = true
    $scope.popUpMsgContent = text
    return


  $scope.actions =
    'signup': ->
      signupUser
        email: $scope.email,
        password: $scope.password,
        username: $scope.name,
        surname: $scope.surname,
        about: $scope.about
    'login': ->
      loginUser
        email: $scope.email,
        password: $scope.password

  $scope.performAction = ->
    $scope.actions[$scope.action]()
    .success () ->
      $scope.changeAll()
      window.location.href = 'http://localhost:8000/app/#/'
      return
    .error () ->
      $scope.openPopUp($scope.translation.INCORRECT_DATA)
  return
]

app.directive 'popUpMsg', ->
  {
    restrict: 'E'
    scope: false
    template: '<div id="popUpMsg-bg" ng-show="showPopUpMsg"><div id="popUpMsg"><div class="content">{{popUpMsgContent}}</div><button ng-click="closePopUp()">Ok</button></div></div>'
    controller: ($scope) ->

      $scope.closePopUp = ->
        $scope.showPopUpMsg = false
        return

      return

  }