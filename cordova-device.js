'use strict';

Polymer(
  {
    is: 'cordova-device',

    properties: {
      /**
       * Return the version of Cordova running on the device.
       */
      cordova: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return the device's manufacturer.
       */
      manufacturer: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return the name of the device's model or product. (Nexus One returns
       * "Passion").
       */
      model: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return the device's operating system name. ("iOS").
       */
      platform: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return if cordova deviceready event has been fired.
       */
      ready: {
        computed: '_computeReady(_ready_, _paused_)',
        notify: true,
        observer: '_observeReady',
        type: Boolean
      },

      /**
       * Return the device hardware serial number.
       */
      serial: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return the device's Universally Unique Identifier.
       */
      uuid: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return the operating system version.
       */
      version: {
        notify: true,
        readOnly: true,
        type: String
      },

      /**
       * Return whether the device is running on a simulator.
       */
      virtual: {
        notify: true,
        readOnly: true,
        type: Boolean
      }
    },

    _computeReady(ready, paused) {
      return ready && !paused;
    },

    _observeReady(ready) {
      if (ready) {
        const device = window.device;

        this._setCordova(device.cordova);
        this._setManufacturer(device.manufacturer);
        this._setModel(device.model);
        this._setPlatform(device.platform);
        this._setSerial(device.serial);
        this._setUuid(device.uuid);
        this._setVersion(device.version);
        this._setVirtual(device.isVirtual);
      }
    }
  }
);
