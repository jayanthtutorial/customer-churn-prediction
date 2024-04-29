import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import { Users } from '../models/users';
import { UserService } from '../services/user.service';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-create-user',
  templateUrl: './create-user.component.html',
  styleUrl: './create-user.component.css'
})
export class CreateUserComponent {
  userDetails: Users = new Users();
  constructor(private userService: UserService) {}

  onSubmit(userDetailsForm: NgForm) {
    if (userDetailsForm.valid) {
      var uDetails = userDetailsForm.value;
      console.log(userDetailsForm.value);
      this.userDetails.Name = uDetails.name;
      this.userDetails.Email = uDetails.email;
      this.userDetails.Amount = uDetails.amount;
      this.userDetails.ModifiedOn = new Date();

      this.userService.AddUser(this.userDetails).subscribe(
        (res) => {
          //console.log('User added successfully:', res);
          // You can add further logic here, such as resetting the form
          

          Swal.fire({
            icon: 'success',
            title: 'User added successfully',
            showConfirmButton: true,
            timer: 5000,
          });
          userDetailsForm.resetForm();
        },
        (error) => {
          console.error('Error adding user:', error);
        }
      );
    }
  }

  
}
