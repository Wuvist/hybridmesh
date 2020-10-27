var demoApp = angular.module("DemoApp", []);
console.log(demoApp);
demoApp.controller("LoginCtrl", function() {
    var $scope = this;
    $scope.name = "World";
});
