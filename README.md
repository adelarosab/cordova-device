_[Demo and API docs](https://adelarosab.github.io/cordova-device)_

### &lt;cordova-camera&gt;
`<cordova-device>` describes the device's hardware and software.

### Installation
In your `www` project:
```bash
bower install --save 
```

In your `cordova` project:
```bash
cordova plugin add cordova-plugin-device
```

### Usage
```html
<cordova-device
    cordova="6.3.0"
    manufacturer="Apple"
    model="Passion"
    platform="iOS"
    ready
    serial="XXX"
    uuid="xxxx xxxx xxxx"
    version="6.1.0"
    virtual
></cordova-device>
```

`<cordova-device>` describes main features of the hardware and software 
device. Some of the attributes in the element are not available for all the 
supported cordova platforms. Please read more in the [documentation](http://cordova.apache.org/docs/en/6.x/reference/cordova-plugin-device/index.html).

---

###### Note:
Due to restrictions `ready` attribute is not shown into attributes table.
