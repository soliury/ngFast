filtersModule = require './index'

exampleFilter = ->
  filter = (obj)->
    return obj + obj.length
  return filter

filtersModule.filter 'exampleFilter', exampleFilter
