<!-- src/components/Navbar.vue -->
<template>
  <nav class="bg-white shadow-lg border-b border-gray-200 sticky top-0 z-50">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between items-center py-4">
        <!-- Logo y nombre -->
        <div class="flex items-center space-x-3">
          <div
            class="w-10 h-10 bg-gradient-to-br from-blue-600 to-blue-700 rounded-xl flex items-center justify-center shadow-lg">
            <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7h8m0 0v8m0-8l-8 8-4-4-6 6">
              </path>
            </svg>
          </div>
          <div>
            <h1 class="text-2xl font-bold bg-gradient-to-r from-blue-600 to-blue-800 bg-clip-text text-transparent">
              LeadCRM
            </h1>
            <p class="text-xs text-gray-500 -mt-1">Panel de Control</p>
          </div>
        </div>

        <!-- Navegación central -->
        <div class="hidden md:flex items-center space-x-8">
          <router-link to="/dashboard" class="text-gray-600 hover:text-blue-600 transition-colors font-medium">
            Dashboard
          </router-link>
          <router-link to="/leads" class="text-gray-600 hover:text-blue-600 transition-colors font-medium">
            Leads
          </router-link>
          <router-link to="/reports" class="text-gray-600 hover:text-blue-600 transition-colors font-medium">
            Reportes
          </router-link>
        </div>

        <!-- Acciones del usuario -->
        <div class="flex items-center space-x-4">
          <!-- Notificaciones -->
          <div class="relative">
            <button class="p-2 text-gray-400 hover:text-gray-600 transition-colors rounded-lg hover:bg-gray-100">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M15 17h5l-3.5-3.5c-.5-.5-.5-1.3 0-1.8L20 8V6a2 2 0 00-2-2H6a2 2 0 00-2 2v2l3.5 3.7c.5.5.5 1.3 0 1.8L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9">
                </path>
              </svg>
              <!-- Badge de notificación -->
              <span class="absolute -top-1 -right-1 w-3 h-3 bg-red-500 rounded-full border-2 border-white"></span>
            </button>
          </div>

          <!-- Menú de usuario -->
          <div class="flex items-center space-x-3">
            <div
              class="w-8 h-8 bg-gradient-to-br from-purple-400 to-purple-500 rounded-full flex items-center justify-center">
              <svg class="w-4 h-4 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"></path>
              </svg>
            </div>

            <button @click="$emit('logout')"
              class="group flex items-center space-x-2 text-gray-600 hover:text-red-600 transition-all duration-200 px-3 py-2 rounded-lg hover:bg-red-50">
              <svg class="w-5 h-5 group-hover:scale-110 transition-transform" fill="none" stroke="currentColor"
                viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1"></path>
              </svg>
              <span class="hidden sm:block font-medium">Cerrar sesión</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>
