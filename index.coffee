EventEmitter = require 'eventemitter2'
globalEmitter = new EventEmitter wildcard: true
module.exports = ->
  emit: -> @getEventEmitter().emit arguments...
  on:   -> @getEventEmitter().on arguments...
  once: -> @getEventEmitter().once arguments...
  off:  -> @getEventEmitter().off arguments...
  getEmitter: -> @props.emitter ? globalEmitter
  getGlobalEmitter: -> globalEmitter
