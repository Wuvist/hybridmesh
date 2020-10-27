var demoApp = angular.module("DemoApp", []);
console.log(demoApp);
demoApp.controller("LoginCtrl", function() {
    var $scope = this;
    $scope.name = "World";
});

function openFlutter() {
    var exec = cordova.require('cordova/exec');
    exec(null, null, 'FlutterLink', 'openFlutter', [""]);
}
