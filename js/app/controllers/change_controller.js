// Generated by CoffeeScript 1.10.0
(function() {
  var app;

  app = angular.module('myApp');

  app.controller('changeCtrl', [
    '$scope', '$css', 'langFactory', function($scope, $css, langFactory) {
      this.translate = function() {
        if (this.selectedLanguage === 'ru') {
          this.selectedLanguage = 'en';
        } else {
          this.selectedLanguage = 'ru';
        }
        $scope.translation = langFactory(this.selectedLanguage);
      };
      console.log(this.selectedLanguage);
      this.selectedLanguage = 'ru';
      this.translate();
      this.selectedTheme = 'light';
      this.switchTheme = function() {
        if (this.selectedTheme === 'light') {
          this.selectedTheme = 'dark';
        } else {
          this.selectedTheme = 'light';
        }
        if (this.selectedTheme === 'light') {
          $css.add('../source/assets/css/style.css');
          $css.remove('../source/assets/css/style2.css');
        } else {
          $css.remove('../source/assets/css/style.css');
          $css.add('../source/assets/css/style2.css');
        }
      };
    }
  ]);

}).call(this);

//# sourceMappingURL=change_controller.js.map
