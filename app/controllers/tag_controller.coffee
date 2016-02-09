app = angular.module('myApp')
app.controller 'tagCtrl',['$scope', 'Tags', ($scope, Tags)->
  Tags.success (data) ->
    $scope.tagList = []
    $scope.popList = []
    i = 0
    while i < 15

      $scope.tagList.push data(i)['name']
      $scope.popList.push data(i)['size']
      i++
    return


  return
]
#for collecting tags
