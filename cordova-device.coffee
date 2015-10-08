Polymer
  is: "cordova-device"

  properties:
    _promise:
      type: Object
      value: ->
        Q.defer()

    model:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String
    platform:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String
    ready:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: Boolean
      value: false
    uuid:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String
    version:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String


  _onDeviceReady: ->
    @_setReady yes
    @_promise.resolve()

    @_setModel device.model
    @_setPlatform device.platform
    @_setUuid device.uuid
    @_setVersion device.version

  attached: ->
    window.addEventListener "deviceready", (@_onDeviceReady.bind this), false

  detached: ->
    window.removeEventListener "deviceready", @_onDeviceReady

  promise: ->
    @_promise.promise
