app = angular.module('myApp')
app.controller 'userDataCtrl', ($scope, UserData)->
  UserData.success(data) ->
    $scope.user = data
    return
  return
