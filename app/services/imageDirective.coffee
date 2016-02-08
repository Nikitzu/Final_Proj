app = angular.module('myApp')

app.directive 'imageDirective', [
  'ImageService'
  (ImageService) ->
    {
      restrict: 'AE'
      template: '<span>' + '<img class="col-md-11" ng-src="{{image.URL}}" ng-click="select(image)" />' + '<button ng-click="remove(image)" class="btn-contact btn-xs">X</button>' + '</span>'
      link: (scope, elem) ->

    }
]