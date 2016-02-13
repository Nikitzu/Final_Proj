app = angular.module('myApp')

app.controller 'changeCtrl', [
  '$scope'
  '$css'
  'langFactory'
  ($scope, $css, langFactory) ->
    @translate = ->
      if @selectedLanguage == 'ru'
        @selectedLanguage = 'en'
      else
        @selectedLanguage = 'ru'
      $scope.translation = langFactory(@selectedLanguage)
      return
    @selectedLanguage = 'ru'
    @translate()

    @selectedTheme = 'light'
    @switchTheme = ->
      if @selectedTheme == 'light'
        @selectedTheme = 'dark'
      else
        @selectedTheme = 'light'
      if @selectedTheme == 'light'
        $css.add '../source/assets/css/style.css'
        $css.remove '../source/assets/css/style2.css'
      else
        $css.remove '../source/assets/css/style.css'
        $css.add '../source/assets/css/style2.css'
      return
    return
]