app = angular.module('myApp')
app.controller 'dataOfUser',['$scope', 'getUserData', 'updateFactory',($scope, getUserData, updateFactory)->
  $scope.user = null
  getUserData().then (data) ->
    $scope.user = data.data

  $scope.saveUserSettings = () ->
    $scope.saveSettings()
    post =
      firstName: $scope.user.firstName
      lastName: $scope.user.lastName
      about: $scope.user.about
    updateFactory(post)

  return
]