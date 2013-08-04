myModule.config(function($routeProvider) {
    $routeProvider.when("/", {
        templateUrl: "pages/index_page.html",
        controller: IndexController
    }).otherwise({
            redirectTo: "/"
        });

});
