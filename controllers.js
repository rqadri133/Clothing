
app.controller('APIController', function ($scope, $http, OMSService) {
    getAllCustomers();
    $scope.showAddCustomer = false;
    $scope.showAllCustomers = true;


    function getAllCustomers() {

        var servCall = OMSService.getCustomers();
        servCall.then(function (d) {
            $scope.customers = d.data;
        }, function (error) {
            $log.error('Oops! Something went wrong while fetching the data.')
        });


    }
    
    $scope.addCustomer = function () {

        $scope.showAddCustomer = true;
        $scope.showAllCustomers = false;



    };


    $scope.saveCustomerInfo = function ()  
        {  
                var customerInfo = {  
                     custName  : $scope.customerName,  
                     custAddress: $scope.customerAddress,
                     custPhone: $scope.customerPhone 

                };

           var saveCustomer = OMSService.saveCustomer(customerInfo);  
           saveCustomer.then(function (d)
                {  

               getAllCustomers();

               $scope.showAddCustomer = false;
               $scope.showAllCustomers = true;

                   }, function (error)  
                       {  
                                console.log('Oops! Something went wrong while saving the data.')  
                            })  
        };  



})


