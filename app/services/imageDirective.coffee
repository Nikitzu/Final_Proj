app = angular.module('myApp')

app.directive 'imageDirective', [
  'ImageService'
  (ImageService) ->
    {
      restrict: 'AE'
      template: '<img ng-src="{{images[0].URL}}" class="col-md-12">'
      link: (scope, elem) ->
        return
    }
]