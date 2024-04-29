import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AllUsersComponent } from './all-users/all-users.component';
import { ContactComponent } from './contact/contact.component';
import { CreateUserComponent } from './create-user/create-user.component';
import { PredictionComponent } from './prediction/prediction.component';
import { TransactionLogComponent } from './transaction-log/transaction-log.component';
import { TransferMoneyComponent } from './transfer-money/transfer-money.component';
import { WelcomeComponent } from './welcome/welcome.component';

const routes: Routes = [
  { path: "", component: WelcomeComponent },
  { path: "contact", component: ContactComponent },
  { path: "createuser", component: CreateUserComponent },
  { path: "allusers", component: AllUsersComponent },
  { path: "transactionlog", component: TransactionLogComponent },
  { path: "transfermoney", component: TransferMoneyComponent },
  { path: "home", component: WelcomeComponent },
  { path: "prediction", component: PredictionComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
