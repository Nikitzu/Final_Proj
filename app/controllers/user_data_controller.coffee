app = angular.module('myApp')
app.controller 'userDataCtrl',['$scope', 'UserDataService', ($scope, UserDataService)->
  this.user = UserDataService.user
  return
]
