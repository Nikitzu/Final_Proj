app = angular.module('myApp')

app.controller 'changeCtrl', [
  '$scope'
  '$css'
  'TranslationService'
  'changeFactory',
  'getUser'
  ($scope, $css, TranslationService, changeFactory, getUser) ->

    switchLanguage = ->
      TranslationService.switchLanguage($scope.selectedLanguage)
      $scope.translation = TranslationService.translation
      return
    switchTheme = ->
      if $scope.selectedTheme == 'light'
        $css.add '../source/assets/css/style.css'
        $css.remove '../source/assets/css/style2.css'
      else
        $css.remove '../source/assets/css/style.css'
        $css.add '../source/assets/css/style2.css'
      return

    $scope.translate = ->
      if $scope.selectedLanguage == 'ru'
        $scope.selectedLanguage = 'en'
      else
        $scope.selectedLanguage = 'ru'
      changeFactory
        theme: $scope.selectedTheme
        language: $scope.selectedLanguage
      switchLanguage()
      return

    $scope.switchTheme = ->
      if $scope.selectedTheme == 'light'
        $scope.selectedTheme = 'dark'
      else
        $scope.selectedTheme = 'light'

      changeFactory
        theme: $scope.selectedTheme
        language: $scope.selectedLanguage
      switchTheme()
      return

    getUser().then (data) ->
      $scope.user = data.data
      $scope.selectedLanguage = $scope.user.language
      $scope.selectedTheme = $scope.user.theme
      switchLanguage()
      switchTheme()
      return
    return
]