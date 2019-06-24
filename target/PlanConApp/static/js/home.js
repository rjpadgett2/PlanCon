App.controller('navController',['$scope', function($scope){
    // Get the modal
    let modal = document.getElementById('myModal');
    var span = document.getElementById("closeBtn");
    $scope.openModal = function() {
        
        modal.style.display = "block";
    }

    $scope.closeModal = function() {
        modal.style.display = "none";
    }

//    $scope.showSchedule = function() {
//       
//    }
//
//    $scope.uploadSchedule = function() {
//     
//    }


}]);