_[Demo and API docs](https://adelarosab.github.io/cordova-device)_

## Note:
Due to restrictions `ready` attribute is not shown into attributes table.

## &lt;cordova-device&gt;

`<cordova-core>` describes the device's hardware and software.

```html
<cordova-core
    cordova="6.3.0"
    manufacturer="Apple"
    model="Passion"
    platform="iOS"
    ready
    serial="XXX"
></cordova-core>
```
### Attributes
 
#### cordova (read-only)

Return the version of Cordova running on the device.
 
#### manufacturer (read-only)

Return the device's manufacturer.
 
#### model (read-only)

Return the name of the device's model or product. (Nexus One returns "Passion").
 
#### platform (read-only)

Return the device's operating system name. ("iOS").
 
#### ready (read-only)

Return if cordova deviceready event has been fired.
 
#### serial (read-only)

Return the device hardware serial number.
 
#### uuid (read-only)

Return the device's Universally Unique Identifier.
 
#### version (read-only)

Return the operating system version.
 
#### virtual (read-only)

Return whether the device is running on a simulator.
