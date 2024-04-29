import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CreateUserComponent } from './create-user/create-user.component';
import { AllUsersComponent } from './all-users/all-users.component';
import { ContactComponent } from './contact/contact.component';
import { FooterComponent } from './footer/footer.component';
import { HeaderComponent } from './header/header.component';
import { PredictionComponent } from './prediction/prediction.component';
import { TransactionLogComponent } from './transaction-log/transaction-log.component';
import { TransferMoneyComponent } from './transfer-money/transfer-money.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';

@NgModule({
  declarations: [
    AppComponent,
    CreateUserComponent,
    AllUsersComponent,
    ContactComponent,
    FooterComponent,
    HeaderComponent,
    PredictionComponent,
    TransactionLogComponent,
    TransferMoneyComponent,
    WelcomeComponent
  ],
  imports: [
    BrowserModule,
    CommonModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
