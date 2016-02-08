app = angular.module('myApp')

app.service 'ImageService', ->
  @imagelist = []

  @imageadd = (image) ->
    console.log 'Added', image
    @imagelist.push image
    return

  @file = {}
  @image = {}

  @get = ->
    @imagelist

  @scaleSize = (maxW, maxH, currW, currH) ->
    ratio = currH / currW
    if currW >= maxW and ratio <= 1
      currW = maxW
      currH = currW * ratio
    else if currH >= maxH
      currH = maxH
      currW = currH / ratio
    [
      currW
      currH
    ]

  @downScale = (img) ->
    arr = @scaleSize(200, 110, img.width, img.height)
    {
      width: arr[0]
      height: arr[1]
    }

  return