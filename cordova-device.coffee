Polymer
  is: "cordova-device"

  properties:
    ### Return device model (Nexus One returns "Passion"). ###
    model:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String
    ### Return device platform ("iOS"). ###
    platform:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String
    ### Return if cordova deviceready event has been fired. ###
    ready:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: Boolean
      value: false
    ### Return UUID created by manufacturer (BlackBerry returns the PIN number of
   the device). ###
    uuid:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String
    ### Return device platform version (iOS 3.2 returns "3.2"). ###
    version:
      notify: true
      readOnly: yes
      reflectToAttribute: yes
      type: String

  _onDeviceReady: ->
    @_setModel device.model
    @_setPlatform device.platform
    @_setReady yes
    @_setUuid device.uuid
    @_setVersion device.version

  attached: ->
    document.addEventListener "deviceready", (@_onDeviceReady.bind this), false

  detached: ->
    document.removeEventListener "deviceready", @_onDeviceReady
