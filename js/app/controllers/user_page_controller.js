// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('userCtrl', [
    '$scope', 'PostService', function($scope, PostService) {
      var changeSettings;
      $scope.showSettings = false;
      $scope.showInfo = true;
      $scope.showPost = false;
      $scope.changeSettings = function() {
        $scope.showSettings = true;
        return $scope.showInfo = false;
      };
      $scope.saveSettings = function() {
        $scope.showSettings = false;
        $scope.showInfo = true;
      };
      $scope.templatePanel = false;
      $scope.firstPost = false;
      $scope.secondPost = false;
      $scope.thirdPost = false;
      $scope.createPost = function() {
        $scope.templatePanel = true;
        $scope.firstPost = true;
        return $scope.showPost = true;
      };
      $scope.addPost = function() {
        $scope.templatePanel = false;
        $scope.showPost = false;
        $scope.templateAction();
        return changeSettings(false, false, false);
      };
      $scope.templateAction = function() {
        var tags;
        tags = $scope.tags.split(" ");
        return PostService.saveNewPost({
          title: $scope.title,
          description: $scope.description,
          article: $scope.article,
          tags: tags.map(function(tag) {
            return {
              name: tag
            };
          }),
          template: $scope.template,
          img: ImageService.imagelist[0] ? ImageService.imagelist[0].base64 : '',
          map: PostService.mapCoordinates
        });
      };
      $scope.showFirstTemplate = function() {
        changeSettings(true, false, false, 'photo');
      };
      $scope.showSecondTemplate = function() {
        changeSettings(false, true, false, 'video');
      };
      $scope.showThirdTemplate = function() {
        changeSettings(false, false, true, 'map');
      };
      changeSettings = function(first, second, third, template) {
        $scope.firstPost = first;
        $scope.secondPost = second;
        $scope.thirdPost = third;
        $scope.template = template;
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=user_page_controller.js.map
