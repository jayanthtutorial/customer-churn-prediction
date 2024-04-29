import { Component } from '@angular/core';
import { TransferMoney } from '../models/users';
import { UserService } from '../services/user.service';

@Component({
  selector: 'app-transfer-money',
  templateUrl: './transfer-money.component.html',
  styleUrl: './transfer-money.component.css'
})
export class TransferMoneyComponent {
  // transfers = [
  //   { id: 1, name: 'John Doe', email: 'john.doe@example.com', balance: 1000, operation: 'Deposit' },
  //   { id: 2, name: 'Jane Smith', email: 'jane.smith@example.com', balance: 2000, operation: 'Withdrawal' },
  //   { id: 3, name: 'Michael Brown', email: 'michael.brown@example.com', balance: 1500, operation: 'Transfer' },
  //   { id: 4, name: 'Sarah Connor', email: 'sarah.connor@example.com', balance: 750, operation: 'Deposit' },
  //   { id: 5, name: 'David Clark', email: 'david.clark@example.com', balance: 1200, operation: 'Transfer' }
  // ];

  transferList: TransferMoney[] = [];
  constructor(private userService: UserService) {}
  
  ngOnInit() {
    this.Get_TransferMoneyList();
  }

  Get_TransferMoneyList() {
    this.userService.Get_TransferMoneyList().subscribe(
      (result) => {
        this.transferList = result;
      },
      (error) => {}
    );
  }
}
