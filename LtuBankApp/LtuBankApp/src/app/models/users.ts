export class Users {
  UserID: number = 0;
  Name: string = '';
  Email: string = '';
  Amount: number = 0;
  ModifiedBy: string = '';
  ModifiedOn: Date | string = '';
  IsDeleted: boolean = false;
}

export class PostResult {
  ID!: string;
  Status!: string;
  Message!: string;
}

export class CustomerChurnPrediction {
  CustomerID: number = 0;
  CreditScore: number = 0;
  Age: number = 0;
  Tenure: number = 0;
  AcBal: string = '';
  NoOfProd: Date | string = '';
  HasCreditCard: boolean = false;
  IsActiveMem: boolean = false;
  EstSal: number = 0;
  Location: string = '';
  Gender: string = '';
}


export class TransactionLog {
  LogID: number =0;
  TransactionType: string= '';
  Sender: string= '';
  Receiver: string= '';
  Amount: number = 0;
  TransactionDate: Date | string = '';
}


export class TransferMoney {
  ID: number = 0;
  Name: string = '';
  Email: string= '';
  Balance: number= 0;
  Operation: string= '';
}

