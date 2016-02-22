app = angular.module('myApp')

app.controller 'userImage',['$scope', 'avatarFactory', 'getUserData',($scope, avatarFactory,getUserData ) ->
  defaultAvatar = 'http://rarebyte.com/images/ra.png'
  $scope.imageStrings = defaultAvatar
  getUserData().then (data) ->
    $scope.imageStrings = if data.data.avatar then data.data.avatar.url else defaultAvatar

  $scope.processFiles = (files) ->
    angular.forEach files, (flowFile, i) ->

      fileReader = new FileReader
      fileReader.readAsDataURL flowFile.file
      fileReader.onload = (event) ->
        uri = event.target.result
        $scope.imageStrings = uri
        avatarFactory({img:uri})
        return
      return
    return
  return
]