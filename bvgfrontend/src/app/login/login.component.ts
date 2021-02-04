import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup, Validators} from '@angular/forms';
import {BackendService} from '../shared/backend.service';
import {AuthService} from '../shared/auth.service';
import {Router} from '@angular/router';
import {HeaderComponent} from '../header/header.component';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  isLogin = false;
  loginForm: FormGroup;
  submitted = false;
  errorMessage: string;

  constructor(
    private formBuilder: FormBuilder,
    private cs: BackendService,
    private auth: AuthService,
    private router: Router
  ) { }

  ngOnInit(): void {
    this.loginForm = this.formBuilder.group({
      personalnr: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  get f(): any { return this.loginForm.controls; }

  onSubmit(): void {
    this.submitted = true;
    // console.log('Your form data : ', this.loginForm.value);
    this.cs.login(this.loginForm.value).subscribe((res: any) => {
      if (res.status && res.data.length > 0) {
        console.log('in login - respone');
        console.log(res);
        this.auth.setDataInLocalStorage('userData', JSON.stringify(res.data));
        this.auth.setDataInLocalStorage('token', res.token);
        this.auth.setDataInLocalStorage('personalnr', res.data[0].PersonalNr);
        this.auth.updateStatus(true);
        console.log('----- personalnr -------');
        console.log(this.auth.getPersonalNr());
        console.log('----- personalnr -------');
        this.isLogin = true;
        this.router.navigate(['']);
      } else {
        console.log('Personal-Nr und Passwort stimmen nicht überein!');
        this.errorMessage = 'Personal-Nr und Passwort stimmen nicht überein!';
        this.loginForm.controls.personalnr.setErrors({errors: true});
        this.loginForm.controls.password.setErrors({errors: true});
        this.isLogin = false;
        this.auth.updateStatus(false);
      }
    }, err => {
      this.isLogin = false;
      this.auth.updateStatus(false);
      this.errorMessage = err.error.message;
    });
  }
}
