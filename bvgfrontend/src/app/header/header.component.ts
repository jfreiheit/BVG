import {Component, OnInit } from '@angular/core';
import {AuthService} from '../shared/auth.service';
import {Router} from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor(private auth: AuthService,
              private router: Router) { }
  isLogin = false;
  personalNr = '';

  // wenn sich der Status von loggedin nach loggedout aendert, soll der header neu geladen werden
  changed = this.auth.loginStatus.subscribe(next => {
      this.ngOnInit();
    });

  ngOnInit(): void {
    this.isUserLogin();
  }

  isUserLogin(): void{
    if (this.auth.isLoggedIn()){
      this.isLogin = true;
      this.personalNr = this.auth.getPersonalNr();
    }
    else {
      this.isLogin = false;
      this.personalNr = '';
    }
  }

  logout(): void{
    console.log('logged out');
    this.auth.clearStorage();
    this.auth.updateStatus(false);
    this.router.navigate(['']);
  }
}
