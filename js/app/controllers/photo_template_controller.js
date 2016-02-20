// Generated by CoffeeScript 1.10.0
(function() {
  var app, ctor;

  app = angular.module('myApp');

  ctor = function($scope, ImageService) {
    var dataFactory;
    dataFactory = function() {
      var data, img, tags;
      tags = $scope.tags ? $scope.tags.split(" ") : [];
      img = ImageService.imagelist[0] ? ImageService.imagelist[0].base64 : '';
      return data = {
        category: $scope.category,
        title: $scope.title,
        description: $scope.description,
        article: $scope.article,
        tags: tags.map(function(tag) {
          return {
            name: tag
          };
        }),
        img: img,
        template: 'photo'
      };
    };
    $scope.postPhoto = function() {
      $scope.setData(dataFactory);
      return $scope.addPost();
    };
  };

  app.controller('PhotoTemplateCtrl', ['$scope', 'ImageService', ctor]);

}).call(this);

//# sourceMappingURL=photo_template_controller.js.map
