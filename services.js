'use strict';


app.service("OMSService", function ($http)  
  {  
                this.getCustomers = function () {
                return $http.get("api/Customers")

              }

    
              this.saveCustomer = function (customerInfo) {
                  return $http(
                    {
                        method: 'post',
                        data: customerInfo,
                        url: 'api/Customers'


                    });
              }


});

     
