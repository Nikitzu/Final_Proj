// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.directive('imageDirective', [
    'ImageService', function(ImageService) {
      return {
        restrict: 'AE',
        template: '<img ng-src="{{images[0].URL}}" class="col-md-12">' + '<button ng-click="remove()" class="btn-default btn-contact" ng-show="images[images.length - 1].URL">X</button>',
        link: function(scope, elem) {
          return console.log("images[0].URL");
        }
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=imageDirective.js.map
