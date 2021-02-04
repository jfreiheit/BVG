import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { MapComponent } from './map/map.component';
import {RegisterComponent} from './register/register.component';
import {LoginComponent} from './login/login.component';
import {PrueferComponent} from './pruefer/pruefer.component';

const routes: Routes = [
  { path: 'all', component: MapComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'login', component: LoginComponent },
  { path: 'pruefer', component: PrueferComponent },
  { path: '',   redirectTo: '/all', pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
