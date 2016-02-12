myApp.controller 'pageCtrl', ($scope, $css) ->
  #$css.bind { href: 'my-page/my-page.css' }, $scope

  #to turn on dark sheme
  $css.add '../source/assets/css/bootstrap2.min.css'
  $css.remove '../source/assets/css/bootstrap.min.css'

  #to turn on light sheme
  $css.remove '../source/assets/css/bootstrap2.min.css'
  $css.add '../source/assets/css/bootstrap.min.css'

  return