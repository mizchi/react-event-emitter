EventEmitter = require 'eventemitter2'
globalEmitter = new EventEmitter wildcard: true, delimitter: ':'
module.exports =
  emit: -> @getContextEmitter().emit arguments...
  on:   -> @getContextEmitter().on arguments...
  once: -> @getContextEmitter().once arguments...
  off:  -> @getContextEmitter().off arguments...
  getContextEmitter: -> @props.emitter ? globalEmitter
  getGlobalEmitter: -> globalEmitter
