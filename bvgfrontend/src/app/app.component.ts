import { Component } from '@angular/core';
import {AuthService} from './shared/auth.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'BVG';
  isLogin = false;

  constructor(private auth: AuthService) {}

  isLoginEvent(state: boolean): void {
      this.isLogin = state;
  }
}
