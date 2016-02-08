app = angular.module('myApp')
app.controller 'tagCtrl',['$scope', 'Tags', ($scope, Tags)->
  Tags.success (data) ->
    $scope.tagList = data
    return
  return
]
