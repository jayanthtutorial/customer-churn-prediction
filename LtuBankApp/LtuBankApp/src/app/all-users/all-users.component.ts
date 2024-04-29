import { Component } from '@angular/core';
import { Users } from '../models/users';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-all-users',
  templateUrl: './all-users.component.html',
  styleUrl: './all-users.component.css',
})
export class AllUsersComponent {
  users: Users[] = [];
  constructor(private userService: UserService) {}

  ngOnInit() {
    this.getAllUsers();
  }

  getAllUsers() {
    this.userService.GetUsersList().subscribe(
      (result) => {
        
        this.users = result;
      },
      (error) => {}
    );
  }
}
