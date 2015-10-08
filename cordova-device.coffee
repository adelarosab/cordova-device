Polymer
  is: "cordova-device"

  properties:
    _promise:
      type: Object

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
    promise:
      readOnly: yes
      type: Object
      value: ->
        Q.defer()
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
    @promise.resolve()

    @_setModel device.model
    @_setPlatform device.platform
    @_setUuid device.uuid
    @_setVersion device.version

  attached: ->
    window.addEventListener "deviceready", (@_onDeviceReady.bind this), false

  detached: ->
    window.removeEventListener "deviceready", @_onDeviceReady
