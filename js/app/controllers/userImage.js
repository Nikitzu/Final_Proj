// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('userImage', [
    '$scope', 'avatarFactory', 'getUserData', function($scope, avatarFactory, getUserData) {
      var defaultAvatar;
      defaultAvatar = 'http://rarebyte.com/images/ra.png';
      $scope.imageStrings = defaultAvatar;
      getUserData().then(function(data) {
        return $scope.imageStrings = data.data.avatar ? data.data.avatar.url : defaultAvatar;
      });
      $scope.processFiles = function(files) {
        angular.forEach(files, function(flowFile, i) {
          var fileReader;
          fileReader = new FileReader;
          fileReader.readAsDataURL(flowFile.file);
          fileReader.onload = function(event) {
            var uri;
            uri = event.target.result;
            $scope.imageStrings = uri;
            avatarFactory({
              img: uri
            });
          };
        });
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=userImage.js.map
