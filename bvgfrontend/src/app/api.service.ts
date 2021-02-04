import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  olUrl = 'https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.4.3/build/ol.js';

  constructor(private http: HttpClient) { }

  getOpenLayer(): Observable<any> {
    return this.http.get(this.olUrl);
  }
}
