App.controller('navController', function($scope){
    // Get the modal
    let modal = document.getElementById('myModal');
    $scope.openModal = function() {
        
        modal.style.display = "block";
    }

    $scope.closeModal = function() {
        modal.style.display = "none";
    }

    $scope.showSchedule = function() {
       
    }

    $scope.uploadSchedule = function() {
     
    }


});