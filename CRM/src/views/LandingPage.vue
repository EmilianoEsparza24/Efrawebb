<template>
  <div class="bg-white text-gray-900 font-sans min-h-screen">
    <!-- Header -->
    <header class="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-40">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center py-4">
          <div class="flex items-center space-x-2">
            <div
              class="w-8 h-8 bg-gradient-to-br from-blue-600 to-blue-700 rounded-lg flex items-center justify-center">
              <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
              </svg>
            </div>
            <h1 class="text-2xl font-bold bg-gradient-to-r from-blue-600 to-blue-800 bg-clip-text text-transparent">
              LeadCRM
            </h1>
          </div>
          <nav class="hidden md:flex items-center space-x-8">
            <a href="#features"
              class="text-gray-600 hover:text-blue-600 transition-colors font-medium">Características</a>
            <a href="#contact" class="text-gray-600 hover:text-blue-600 transition-colors font-medium">Contacto</a>
            <router-link to="/login"
              class="bg-gradient-to-r from-blue-600 to-blue-700 text-white px-6 py-2 rounded-lg hover:from-blue-700 hover:to-blue-800 transition-all duration-200 font-medium shadow-lg hover:shadow-xl transform hover:scale-105">
              Comenzar ahora
            </router-link>
          </nav>
          <!-- Mobile menu button -->
          <div class="md:hidden">
            <router-link to="/login" class="bg-blue-600 text-white px-4 py-2 rounded-lg text-sm font-medium">
              Iniciar
            </router-link>
          </div>
        </div>
      </div>
    </header>

    <!-- Hero Section -->
    <section class="relative bg-gradient-to-br from-blue-50 via-indigo-50 to-purple-50 py-20 px-4 overflow-hidden">
      <!-- Background decoration -->
      <div class="absolute inset-0 bg-grid-pattern opacity-5"></div>
      <div
        class="absolute top-0 left-0 w-72 h-72 bg-blue-300 rounded-full mix-blend-multiply filter blur-xl opacity-20 animate-blob">
      </div>
      <div
        class="absolute top-0 right-0 w-72 h-72 bg-purple-300 rounded-full mix-blend-multiply filter blur-xl opacity-20 animate-blob animation-delay-2000">
      </div>

      <div class="relative max-w-7xl mx-auto text-center">
        <div class="max-w-4xl mx-auto">
          <h2 class="text-5xl md:text-6xl font-bold mb-6 leading-tight">
            Convierte
            <span class="bg-gradient-to-r from-blue-600 to-purple-600 bg-clip-text text-transparent">
              visitas
            </span>
            en clientes
          </h2>
          <p class="text-xl md:text-2xl mb-8 text-gray-600 leading-relaxed max-w-3xl mx-auto">
            Transforma el interés en ventas reales. Con LeadCRM, captura, organiza y convierte más leads
            en clientes satisfechos de manera automatizada.
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center items-center">
            <router-link to="/login"
              class="group bg-gradient-to-r from-blue-600 to-blue-700 text-white px-8 py-4 rounded-xl text-lg font-semibold hover:from-blue-700 hover:to-blue-800 transition-all duration-200 shadow-xl hover:shadow-2xl transform hover:scale-105">
              <span class="flex items-center space-x-2">
                <span>Comenzar gratis</span>
                <svg class="w-5 h-5 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor"
                  viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6">
                  </path>
                </svg>
              </span>
            </router-link>
            <a href="#contact" class="text-gray-600 hover:text-blue-600 font-semibold transition-colors text-lg">
              Ver demo →
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="py-20 px-4 bg-white">
      <div class="max-w-7xl mx-auto">
        <div class="text-center mb-16">
          <h3 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
            Todo lo que necesitas para hacer crecer tu negocio
          </h3>
          <p class="text-xl text-gray-600 max-w-3xl mx-auto">
            Herramientas poderosas y fáciles de usar que te ayudan a gestionar leads de manera eficiente
          </p>
        </div>

        <div class="grid md:grid-cols-3 gap-8 lg:gap-12">
          <div
            class="group bg-gradient-to-br from-blue-50 to-indigo-50 p-8 rounded-2xl border border-blue-100 hover:border-blue-200 transition-all duration-300 hover:shadow-xl">
            <div
              class="w-14 h-14 bg-gradient-to-br from-blue-500 to-blue-600 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M3 8l7.89 1.98c2.3.58 4.26-.84 4.26-3.08V5c0-1.1-.9-2-2-2H5C3.9 3 3 3.9 3 5v3zm0 0v6c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2v-6M3 8l9 4m0 0l9-4m-9 4v10">
                </path>
              </svg>
            </div>
            <h4 class="text-xl font-bold text-gray-900 mb-3">Captura Inteligente</h4>
            <p class="text-gray-600 leading-relaxed">
              Formularios optimizados que capturan información valiosa de clientes potenciales de manera automática y
              eficiente.
            </p>
          </div>

          <div
            class="group bg-gradient-to-br from-green-50 to-emerald-50 p-8 rounded-2xl border border-green-100 hover:border-green-200 transition-all duration-300 hover:shadow-xl">
            <div
              class="w-14 h-14 bg-gradient-to-br from-green-500 to-green-600 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z">
                </path>
              </svg>
            </div>
            <h4 class="text-xl font-bold text-gray-900 mb-3">Gestión Centralizada</h4>
            <p class="text-gray-600 leading-relaxed">
              Dashboard intuitivo donde visualizas, organizas y das seguimiento a todos tus leads desde un solo lugar.
            </p>
          </div>

          <div
            class="group bg-gradient-to-br from-purple-50 to-violet-50 p-8 rounded-2xl border border-purple-100 hover:border-purple-200 transition-all duration-300 hover:shadow-xl">
            <div
              class="w-14 h-14 bg-gradient-to-br from-purple-500 to-purple-600 rounded-xl flex items-center justify-center mb-6 group-hover:scale-110 transition-transform duration-300">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
              </svg>
            </div>
            <h4 class="text-xl font-bold text-gray-900 mb-3">Conversión Optimizada</h4>
            <p class="text-gray-600 leading-relaxed">
              Herramientas avanzadas de seguimiento y análisis que te ayudan a convertir más leads en ventas reales.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-20 bg-gradient-to-br from-gray-50 to-blue-50">
      <ContactForm />
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid md:grid-cols-4 gap-8">
          <!-- Company Info -->
          <div class="col-span-2">
            <div class="flex items-center space-x-2 mb-4">
              <div
                class="w-8 h-8 bg-gradient-to-br from-blue-400 to-blue-500 rounded-lg flex items-center justify-center">
                <svg class="w-5 h-5 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6"></path>
                </svg>
              </div>
              <h3 class="text-2xl font-bold">LeadCRM</h3>
            </div>
            <p class="text-gray-300 mb-4 leading-relaxed max-w-md">
              La plataforma más eficiente para gestionar y convertir leads en clientes.
              Optimiza tu proceso de ventas y haz crecer tu negocio.
            </p>
            <div class="flex space-x-4">
              <a href="#" class="text-gray-400 hover:text-white transition-colors">
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path
                    d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z" />
                </svg>
              </a>
              <a href="#" class="text-gray-400 hover:text-white transition-colors">
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path
                    d="M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 0 1-1.93.07 4.28 4.28 0 0 0 4 2.98 8.521 8.521 0 0 1-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z" />
                </svg>
              </a>
              <a href="#" class="text-gray-400 hover:text-white transition-colors">
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path
                    d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z" />
                </svg>
              </a>
            </div>
          </div>

          <!-- Quick Links -->
          <div>
            <h4 class="text-lg font-semibold mb-4">Enlaces</h4>
            <ul class="space-y-2">
              <li><a href="#features" class="text-gray-300 hover:text-white transition-colors">Características</a></li>
              <li><a href="#contact" class="text-gray-300 hover:text-white transition-colors">Contacto</a></li>
              <li><router-link to="/login" class="text-gray-300 hover:text-white transition-colors">Iniciar
                  Sesión</router-link></li>
              <li><a href="#" class="text-gray-300 hover:text-white transition-colors">Soporte</a></li>
            </ul>
          </div>

          <!-- Contact Info -->
          <div>
            <h4 class="text-lg font-semibold mb-4">Contacto</h4>
            <ul class="space-y-2 text-gray-300">
              <li class="flex items-center space-x-2">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M3 8l7.89 1.98c2.3.58 4.26-.84 4.26-3.08V5c0-1.1-.9-2-2-2H5C3.9 3 3 3.9 3 5v3zm0 0v6c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2v-6M3 8l9 4m0 0l9-4m-9 4v10">
                  </path>
                </svg>
                <span>info@leadcrm.com</span>
              </li>
              <li class="flex items-center space-x-2">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z">
                  </path>
                </svg>
                <span>+52 (55) 1234-5678</span>
              </li>
            </ul>
          </div>
        </div>

        <div class="border-t border-gray-800 mt-12 pt-8 text-center">
          <p class="text-gray-400">
            © 2025 LeadCRM. Todos los derechos reservados. Hecho con ❤️ para impulsar tu negocio.
          </p>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
import ContactForm from '../components/ContactForm.vue'
</script>