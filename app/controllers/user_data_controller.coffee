app = angular.module('myApp')
app.controller 'userDataCtrl',['$scope', 'UserDataService', ($scope, UserDataService)->
  $scope.user = UserDataService.user
  return
]
