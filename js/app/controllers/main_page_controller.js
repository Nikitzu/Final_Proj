// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.filter('byTag', function() {
    return function(items, tag) {
      var currentTags, i, item, len, result;
      result = [];
      if (!tag) {
        items;
      } else {
        for (i = 0, len = items.length; i < len; i++) {
          item = items[i];
          currentTags = item.tags.map(function(tag) {
            console.log(tag.name);
            return tag.name;
          });
          if (currentTags.indexOf(tag) !== -1) {
            result.push(item);
          }
        }
      }
      return result;
    };
  });

  app.controller('mainCtrl', [
    '$scope', '$routeParams', 'UserDataService', 'getUser', 'getPosts', 'sendRating', 'getHighRate', 'TranslationService', function($scope, $routeParams, UserDataService, getUser, getPosts, sendRating, getHighRate) {
      var destinations;
      destinations = {
        'user': getPosts(UserDataService.user ? UserDataService.user.id : 0),
        'all': getHighRate
      };
      $scope.destination = $routeParams.destination;
      $scope.posts = [];
      $scope.predicate = 'score';
      $scope.filteringTag = 'test';
      $scope.action = function() {
        destinations[$scope.destination].get().then(function(posts) {
          console.log(posts.data);
          $scope.posts = posts.data;
        }, function(err) {
          console.log(err.data);
        });
      };
      $scope.action();
      $scope.changeRating = function(post, inc) {
        var rating;
        rating = {
          id: post.id,
          score: inc
        };
        console.log(rating);
        sendRating(rating).success(function(res) {
          console.log(res);
          post.score = res.score;
        }).error(function() {
          return console.log("already rated");
        });
      };
      $scope.order = function(predicate) {
        return $scope.predicate = predicate;
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=main_page_controller.js.map
