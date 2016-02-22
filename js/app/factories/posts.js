// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.factory('getPosts', function($http) {
    return function(id) {
      return {
        get: function() {
          return $http.get('http://localhost:3000/posts/' + id);
        }
      };
    };
  });

  app.factory('getPost', function($http) {
    return function(id) {
      return {
        get: function() {
          return $http.get('http://localhost:3000/post/' + id);
        }
      };
    };
  });

  app.factory('savePost', function($http) {
    return function(post) {
      return $http.post('http://localhost:3000/post/save', post);
    };
  });

  app.factory('delPostFactory', function($http) {
    return function(id) {
      return $http["delete"]('http://localhost:3000/post/' + id);
    };
  });

}).call(this);

//# sourceMappingURL=posts.js.map