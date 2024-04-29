import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable({
  providedIn: 'root'
})
export class HttpService {


  baseUrl: string;

  httpOptions = {
    headers: new HttpHeaders({
      'Content-Type': 'application/json',
    }),
    rejectUnauthorized: false,
  };

  constructor(private _httpClient: HttpClient) {
    this.baseUrl = "https://localhost:44397/";// environment.apiUrl;
  }

  httpPost(url: string, body?: any, options?: any) {

    if (body) {
      if (options) {
        return this._httpClient.post<any>(
          this.baseUrl + url,
          body,
          options
        );
      }
      else if (options === null) {
        return this._httpClient.post<any>(
          this.baseUrl + url,
          body
        );
      }
      else {
        return this._httpClient.post<any>(
          this.baseUrl + url,
          body,
          this.httpOptions
        );
      }
    }
    else {
      return this._httpClient.post<any>(
        this.baseUrl + url,
        this.httpOptions
      );
    }

  }

  httpGet(url: string) {
    return this._httpClient.get<any>(
      this.baseUrl + url
    );
  }
}
