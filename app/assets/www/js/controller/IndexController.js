function IndexController($scope, $navigate) {
    $scope.test = function () {
        console.log("invoke");

        cordova.exec(function(result){
            console.log(result);
        }, function (result) {
            console.log(result);
            console.log('error');
        },"Fortune","test",[]);



    };

}
