
	var app = angular.module('downloadControllers',  ['ng','ngGrid','checklist-model','akoenig.deckgrid']);
    
   
app.controller('FbanalyzerCtrl', function($scope,$http,$rootScope) {

   

    $scope.bugreportdata = []; 
	$scope.totalcount = 0;
	$scope.formData = {};
	$scope.formData.trendcat =  "fun";
    $scope.formData.likesplus =  "1000";
	$scope.formData.trendimageage = 2;
	$scope.categories =  ['fun','sports','cars/bikes','animals'] ;
	$scope.likesrange =  ['1000','2000','4000','10000','100000'] ;  
	$scope.loading = 'false';
		
	$scope.getstats = function() {
		 $scope.loading = 'true';
	  	 $http({
            method: "GET",
            url: 'server.cfc?method=getdata',
			params : $scope.formData,
             }).success(function (data) {
				 $scope.loading = 'false';
				if(data == '"error"')
					alert('There was an error');
					else{
				         $scope.imgpath = data.substring(1,data.length - 1);
					}
          }).error(function (data) {
                      popupmsg('Some error occured. Please try later',true);
          });
		}


	
	$scope.download = function() {
		 window.open($scope.imgpath);
		}


	$scope.reset = function()
	{
    $scope.formData.url = 'http://google.com';
	$scope.formData.height = '800';
	$scope.formData.width = '1024';
	$scope.formData.format = 'png';
	$scope.formData.delay = '5';
	$scope.imgpath = '';
	}

	$scope.reset();
	
  

});

