app = angular.module('myApp')

app.controller 'avatarCtrl',['$scope', 'PhotoLoader', 'getUser',($scope, PhotoLoader,getUser ) ->
  defaultAvatar = 'http://bygaga.com.ua/uploads/posts/1350145508_prikolnie_kartinki_skuchayu_567_2657-27.jpg'
  $scope.imageStrings = defaultAvatar
  getUser().then (data) ->
    $scope.imageStrings = if data.data.avatar then data.data.avatar.url else defaultAvatar

  $scope.processFiles = (files) ->
    angular.forEach files, (flowFile, i) ->

      fileReader = new FileReader
      fileReader.readAsDataURL flowFile.file
      fileReader.onload = (event) ->
        uri = event.target.result
        $scope.imageStrings = uri
        PhotoLoader({img:uri})

        console.log(uri)
        return
      return
    return
  return
]