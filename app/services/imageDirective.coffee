app = angular.module('myApp')

app.directive 'imageDirective', [
  'ImageService'
  (ImageService) ->
    {
      restrict: 'AE'
      template: '<img ng-src="{{images[0].URL}}" class="col-md-12">' + '<button ng-click="remove()" class="btn-default btn-contact" ng-show="images[images.length - 1].URL">X</button>'
      link: (scope, elem) ->
        console.log("images[0].URL")
    }
]