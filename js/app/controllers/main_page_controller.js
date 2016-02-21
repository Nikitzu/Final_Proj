// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.filter('byTag', function() {
    return function(items, tag) {
      var currentTags, i, item, len, result;
      result = [];
      if (!tag || tag === '') {
        return items;
      } else {
        for (i = 0, len = items.length; i < len; i++) {
          item = items[i];
          currentTags = item.tags.map(function(tag) {
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

  app.filter('byCategory', function() {
    return function(items_, category) {
      var i, item, len, result;
      result = [];
      if (!category || category === '') {
        return items_;
      } else {
        for (i = 0, len = items_.length; i < len; i++) {
          item = items_[i];
          if (item.category === category) {
            result.push(item);
          }
        }
      }
      return result;
    };
  });

  app.controller('mainCtrl', [
    '$scope', '$routeParams', 'getUser', 'getPosts', 'sendRating', 'getHighRate', 'SearchService', function($scope, $routeParams, getUser, getPosts, sendRating, getHighRate, SearchService) {
      var userId;
      console.log($routeParams.destination);
      $scope.destination = $routeParams.destination;
      $scope.posts = [];
      $scope.predicate = 'score';
      $scope.user = null;
      userId = $scope.destination === 'id' ? $routeParams.param : null;
      getUser(userId).then(function(data) {
        console.log("USERDATA", userId, data.data);
        return $scope.user = data.data;
      }).then(function() {
        return $scope.checkPosts();
      }, function() {
        return $scope.checkPosts();
      });
      $scope.action = function() {
        $scope.destinations[$scope.destination].get().then(function(posts) {
          posts.data.map(function(post) {
            console.log("CHANGED");
            return post.createdAt = Date.parse(post.createdAt);
          });
          $scope.posts = posts.data;
          console.log("performing action", $scope.destination, $scope.filteringCategory, $scope.filteringTag, posts.data, posts.data === $scope.posts);
        }, function(err) {
          console.log(err.data);
        });
      };
      $scope.changeRating = function(post, inc) {
        var rating;
        rating = {
          id: post.id,
          score: inc
        };
        sendRating(rating).success(function(res) {
          post.score = res.score;
        }).error(function() {
          return console.log("already rated");
        });
      };
      $scope.checkPosts = function() {
        if (SearchService.posts) {
          $scope.posts = SearchService.posts;
          SearchService.posts = null;
        } else {
          $scope.destinations = {
            'user': getPosts($scope.user ? $scope.user.id : 0),
            'all': getHighRate,
            'id': getPosts($routeParams.param ? $routeParams.param : 999)
          };
          if ($routeParams.destination === 'tag') {
            $scope.filteringTag = $routeParams.param;
            $scope.destination = 'all';
          }
          if ($routeParams.destination === 'category') {
            $scope.filteringCategory = $routeParams.param;
            $scope.destination = 'all';
          }
          $scope.action();
        }
      };
      $scope.order = function(predicate) {
        console.log("Done");
        return $scope.predicate = predicate;
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=main_page_controller.js.map
