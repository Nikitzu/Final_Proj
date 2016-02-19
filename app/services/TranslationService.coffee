app = angular.module 'myApp'

app.service 'TranslationService', (langFactory)->
  @translation = null
  @changeLanguage = (lang) ->
    @translation = langFactory(lang)
    return
  return