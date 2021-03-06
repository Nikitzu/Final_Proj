app = angular.module('myApp')

app.controller 'changeSettings', [
  '$scope'
  '$css'
  'translationService'
  'updateSettingsFactory',
  'getUserData'
  ($scope, $css, translationService, updateSettingsFactory, getUserData) ->

    $scope.changeAll = ->
      getUserData().then (data) ->
        $scope.user = data.data
        $scope.selectedLanguage = $scope.user.language
        $scope.selectedTheme = $scope.user.theme
        $scope.changeLanguage()
        $scope.changeTheme()
        return
      return

    $scope.changeLanguage = ->
      translationService.changeLanguage($scope.selectedLanguage)
      $scope.translation = translationService.translation
      return

    $scope.changeTheme = ->
      if $scope.selectedTheme == 'light'
        $css.add '../source/assets/css/style.css'
        $css.remove '../source/assets/css/style2.css'
        $css.add 'bower_components/jqcloud2/dist/jqcloud.css'
        $css.remove 'bower_components/jqcloud2/dist/jqcloud2.css'
      else
        $css.remove '../source/assets/css/style.css'
        $css.add '../source/assets/css/style2.css'
        $css.remove 'bower_components/jqcloud2/dist/jqcloud.css'
        $css.add 'bower_components/jqcloud2/dist/jqcloud2.css'
      return

    $scope.switchLanguage = ->
      if $scope.selectedLanguage == 'ru'
        $scope.selectedLanguage = 'en'
      else
        $scope.selectedLanguage = 'ru'
      updateSettingsFactory
        theme: $scope.selectedTheme
        language: $scope.selectedLanguage
      $scope.changeLanguage()
      return

    $scope.switchTheme = ->
      if $scope.selectedTheme == 'light'
        $scope.selectedTheme = 'dark'
      else
        $scope.selectedTheme = 'light'

      updateSettingsFactory
        theme: $scope.selectedTheme
        language: $scope.selectedLanguage
      $scope.changeTheme()
      return

    $scope.selectedLanguage = 'en'
    $scope.selectedTheme = 'light'
    $scope.changeLanguage()
    $scope.changeTheme()
    $scope.changeAll()

    return
]