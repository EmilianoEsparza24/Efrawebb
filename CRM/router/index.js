import { createRouter, createWebHistory } from 'vue-router'
import LoginView from '../src/views/LoginView.vue'
import LeadsView from '../src/views/LeadsView.vue'
import Formulario from '../src/components/ContactForm.vue'
import LandingPage from '../src/views/LandingPage.vue'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: '/login', name: 'Login', component: LoginView },
    { path: '/leads', name: 'Leads', component: LeadsView },
    { path: '/formulario', name: 'Formulario', component: Formulario },
    { path: '/', name: 'LandingPage', component: LandingPage }
  ]
})

// Protege rutas
router.beforeEach((to, from, next) => {
  const token = localStorage.getItem('token')
  const publicRoutes = ['/', '/login']

  if (!token && !publicRoutes.includes(to.path)) {
    // No autenticado y tratando de ir a una ruta protegida
    next('/')
  } else if (token && to.path === '/login') {
    // Ya autenticado y quiere ir a login
    next('/leads')
  } else {
    // Permitido
    next()
  }
})


export default router