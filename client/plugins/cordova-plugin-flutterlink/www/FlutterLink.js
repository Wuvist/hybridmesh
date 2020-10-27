var exec = require('cordova/exec');

exports.openFlutter = function (arg0, success, error) {
    exec(success, error, 'FlutterLink', 'openFlutter', [arg0]);
};
