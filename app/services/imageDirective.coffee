app = angular.module('myApp')

app.directive 'imageDirective', [
  'ImageService'
  (ImageService) ->
    {
      restrict: 'AE'
      template: '<li>' + '<span>' + '<img ng-src="{{image.URL}}" ng-click="select(image)" />' + '<button ng-click="remove(image)" class="btn-default btn-xs">X</button>' + '</span>' + '</li>'
      link: (scope, elem) ->

    }
]