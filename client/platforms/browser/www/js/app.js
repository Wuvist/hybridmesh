var demoApp = angular.module("DemoApp", []);
console.log(demoApp);
demoApp.controller("LoginCtrl", ['$scope', function($scope) {
    $scope.name = "World";

    $scope.openFlutter = function() {
        var exec = cordova.require('cordova/exec');
        exec(null, null, 'FlutterLink', 'openFlutter', [""]);
    };
}]);
