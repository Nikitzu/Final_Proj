// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.filter('trustAsResourceUrl', [
    '$sce', function($sce) {
      return function(val) {
        return $sce.trustAsResourceUrl(val);
      };
    }
  ]);

  app.controller('videoCtrl', function($scope) {
    var dataFactory;
    $scope.embeddify = function(videoUrl) {
      if (videoUrl) {
        $scope.resUrl = videoUrl.replace('watch?v=', 'embed/');
        $scope.resUrl.replace('&index=18&', '?');
        return $scope.resUrl.replace('&', '?');
      }
    };
    dataFactory = function() {
      var data, tags;
      tags = $scope.tags ? $scope.tags.split(" ") : [];
      return data = {
        title: $scope.title,
        description: $scope.description,
        article: $scope.article,
        tags: tags.map(function(tag) {
          return {
            name: tag
          };
        }),
        template: 'video',
        videoLink: $scope.resUrl
      };
    };
    $scope.postVideo = function() {
      $scope.setData(dataFactory);
      return $scope.addPost();
    };
  });

}).call(this);

//# sourceMappingURL=video_controller.js.map
