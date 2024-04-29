import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-prediction',
  templateUrl: './prediction.component.html',
  styleUrl: './prediction.component.css',
})
export class PredictionComponent {
  onSubmit(predictionDetails: NgForm) {
    if (predictionDetails.valid) {
      var pDetails = predictionDetails.value;
      console.log(predictionDetails.value);
      debugger
      if (  pDetails.Tenure > 1 && pDetails.Balance > 1000 && pDetails.CreditScore > 600){
        Swal.fire({
          icon: 'success',
          title: 'Customer will stay!',
          showConfirmButton: true,
          timer: 5000,
        });
        predictionDetails.resetForm();
      }
      else{
        Swal.fire({
          icon: 'warning' ,
          title: 'Customer will churn out!',
          showConfirmButton: true,
          timer: 5000,
        });
      }
        
    } else {
      Swal.fire({
        icon: 'warning',
        title: 'Please enter the details correctly!',
        showConfirmButton: true,
        timer: 5000,
      });
    }
  }
}
