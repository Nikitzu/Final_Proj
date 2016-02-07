app = angular.module('myApp')
app.controller 'videoCtrl', ($scope)->
  $scope.embeddify = (videoUrl)->
    videoUrl.replace('watch?v=','embed/')