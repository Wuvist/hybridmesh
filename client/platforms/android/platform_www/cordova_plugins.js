cordova.define('cordova/plugin_list', function(require, exports, module) {
  module.exports = [
    {
      "id": "cordova-plugin-flutterlink.FlutterLink",
      "file": "plugins/cordova-plugin-flutterlink/www/FlutterLink.js",
      "pluginId": "cordova-plugin-flutterlink",
      "clobbers": [
        "cordova.plugins.FlutterLink"
      ]
    }
  ];
  module.exports.metadata = {
    "cordova-plugin-whitelist": "1.3.4",
    "cordova-plugin-flutterlink": "0.0.1"
  };
});