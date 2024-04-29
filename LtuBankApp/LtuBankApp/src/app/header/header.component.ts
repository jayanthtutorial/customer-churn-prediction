import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent {
  isMenuOpen = false;
  constructor(private router: Router) {}
  toggleMenu() {
    this.isMenuOpen = !this.isMenuOpen;
  }
}
