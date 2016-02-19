app = angular.module('myApp')
app.controller 'userDataCtrl',['$scope', 'getUser', 'updateFactory',($scope, getUser, updateFactory)->
  $scope.user = null
  getUser().then (data) ->
    $scope.user = data.data

  $scope.saveUserSettings = () ->
    $scope.saveSettings()
    post =
      firstName: $scope.user.firstName
      lastName: $scope.user.lastName
      about: $scope.user.about
    console.log($scope.user,post)
    updateFactory(post)

  return
]