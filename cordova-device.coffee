Polymer
  is: "cordova-device"

  properties:
    _enabler:
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
    promise:
      computed: "_computePromise(_enabler)"
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

  _computePromise: (enabler) ->
    enabler.promise

  _onDeviceReady: ->
    @_setReady yes
    @_enabler.resolve()

    @_setModel device.model
    @_setPlatform device.platform
    @_setUuid device.uuid
    @_setVersion device.version

  attached: ->
    document.addEventListener "deviceready", (@_onDeviceReady.bind this), false

  detached: ->
    document.removeEventListener "deviceready", @_onDeviceReady
