app = angular.module('myApp')

app.controller 'avatarCtrl',['$scope', 'PhotoLoader',($scope, PhotoLoader) ->
  $scope.imageStrings = []

  $scope.processFiles = (files) ->
    angular.forEach files, (flowFile, i) ->
      fileReader = new FileReader
      fileReader.readAsDataURL flowFile.file
      fileReader.onload = (event) ->
        uri = event.target.result
        $scope.imageStrings[i] = uri
        PhotoLoader({img:uri})

        console.log(uri)
        return
      return
    return

  return
]