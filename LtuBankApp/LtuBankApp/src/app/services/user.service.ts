import { Injectable } from '@angular/core';
import { PostResult, TransactionLog, TransferMoney, Users } from '../models/users';
import { Observable } from 'rxjs';

import { HttpClient, HttpHeaders } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class UserService {
  
  baseUrl: string;
  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
    }),
    rejectUnauthorized: false,
  };
  
  constructor(private _http: HttpClient) {
    this.baseUrl = "https://localhost:44397/";
  }
  GetUsersList(): Observable<Users[]> {
    return this._http.get<Users[]>(`${this.baseUrl}api/Users/GetUsersList`
    
    )
  }

  Get_ListTransactionLogs(): Observable<TransactionLog[]> {
    return this._http.get<TransactionLog[]>(`${this.baseUrl}api/Users/Get_ListTransactionLogs`
    
    )
  }

  Get_TransferMoneyList(): Observable<TransferMoney[]> {
    return this._http.get<TransferMoney[]>(`${this.baseUrl}api/Users/Get_TransferMoneyList`
    
    )
  }
  
  AddUser(model: Users): Observable<any> {

    return this._http.post<Response>(`${this.baseUrl}api/Users/AddUser`,model,this.httpOptions)
  }

  UpdateUser(model: Users): Observable<any> {

    return this._http.post<Response>(`${this.baseUrl}api/Users/UpdateUser`,model,this.httpOptions)
  }
  DeleteUser(
    Id: number,
    ModifiedBy: string,
    ModifiedOn: string | null
  ): Observable<any> {
    return this._http.post<Response>(`${this.baseUrl}api/Users/DeleteUser?Id=${Id}&ModifiedBy=${ModifiedBy}&ModifiedOn=${ModifiedOn}`, this.httpOptions)
  }
}
