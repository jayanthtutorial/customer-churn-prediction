import { Component } from '@angular/core';
import { TransactionLog } from '../models/users';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-transaction-log',
  templateUrl: './transaction-log.component.html',
  styleUrl: './transaction-log.component.css'
})
export class TransactionLogComponent {
  // transactions = [
  //   { id: 1, sender: 'John Doe', receiver: 'Jane Smith', amount: 500, dateTime: '2024-04-23T12:00:00Z' },
  //   { id: 2, sender: 'Michael Brown', receiver: 'David Clark', amount: 200, dateTime: '2024-04-23T13:00:00Z' },
  //   { id: 3, sender: 'Sarah Connor', receiver: 'Kyle Reese', amount: 1500, dateTime: '2024-04-23T14:00:00Z' },
  //   { id: 4, sender: 'Alice Johnson', receiver: 'Bob Lee', amount: 750, dateTime: '2024-04-23T15:00:00Z' },
  //   { id: 5, sender: 'Diana Prince', receiver: 'Clark Kent', amount: 1200, dateTime: '2024-04-23T16:00:00Z' }
  // ];

  tranLogs: TransactionLog[] = [];
  constructor(private userService: UserService) {}

  ngOnInit() {
    this.getTransactionsList();
  }

  getTransactionsList() {
    this.userService.Get_ListTransactionLogs().subscribe(
      (result) => {
        
        this.tranLogs = result;
      },
      (error) => {}
    );
  }
}
