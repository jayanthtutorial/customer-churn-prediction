import { Component } from '@angular/core';
import { NgForm } from '@angular/forms';
import Swal from 'sweetalert2';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrl: './contact.component.css'
})
export class ContactComponent {
  onSubmit(contact: NgForm){
    
    if (contact.valid) {
      Swal.fire({
        icon: 'success',
        title: 'Email sent successfully!',
        showConfirmButton: true,
        timer: 2000,
      });
    }
    else{
      Swal.fire({
        icon: 'warning',
        title: 'Please enter the Name, Email, Subject and Message!',
        showConfirmButton: true,
        timer: 2000,
      });
    }
    
  }
}
