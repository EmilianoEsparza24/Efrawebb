<template>
  <div class="min-h-screen flex items-center justify-center bg-gradient-to-br from-blue-100 to-blue-200 px-4">
    <div class="bg-white shadow-xl rounded-2xl px-10 py-8 w-full max-w-md border border-blue-300">
      <h2 class="text-3xl font-bold mb-6 text-center text-blue-700">Bienvenido de nuevo</h2>

      <form @submit.prevent="login" class="space-y-6">
        <div>
          <label for="email" class="block text-sm font-medium text-gray-700 mb-1">Correo electrónico</label>
          <input
            v-model="email"
            id="email"
            type="email"
            required
            class="input focus:ring-2 focus:ring-blue-400"
            placeholder="usuario@ejemplo.com"
          />
        </div>

        <div>
          <label for="password" class="block text-sm font-medium text-gray-700 mb-1">Contraseña</label>
          <div class="relative">
            <input
              :type="showPassword ? 'text' : 'password'"
              v-model="password"
              id="password"
              required
              class="input pr-12 focus:ring-2 focus:ring-blue-400"
              placeholder="••••••••"
            />
            <div class="absolute inset-y-0 right-0 flex items-center pr-3">
              <label class="flex items-center space-x-2 cursor-pointer">
                <input
                  type="checkbox"
                  id="showPwd"
                  v-model="showPassword"
                  class="accent-blue-600 h-4 w-4"
                />
                <span class="text-xs text-gray-600">Mostrar</span>
              </label>
            </div>
          </div>
        </div>

        <button
          type="submit"
          :disabled="loading"
          class="w-full flex justify-center items-center gap-2 bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700 transition duration-300 disabled:opacity-50"
        >
          <svg
            v-if="loading"
            class="animate-spin h-5 w-5 text-white"
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
          >
            <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
            <path
              class="opacity-75"
              fill="currentColor"
              d="M4 12a8 8 0 018-8v4a4 4 0 00-4 4H4z"
            ></path>
          </svg>
          <span>{{ loading ? 'Ingresando...' : 'Iniciar sesión' }}</span>
        </button>
      </form>

      <div class="text-center mt-6">
        <a href="/" class="text-sm text-blue-600 hover:underline">← Volver al inicio</a>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import axios from 'axios'
import { useRouter } from 'vue-router'

const email = ref('')
const password = ref('')
const showPassword = ref(false)
const loading = ref(false)
const router = useRouter()

const login = async () => {
  loading.value = true
  try {
    const res = await axios.post(`${import.meta.env.VITE_API_URL}/login`, {
      email: email.value,
      password: password.value
    })

    localStorage.setItem('token', res.data.token)
    router.push('/leads')
  } catch (e) {
    alert('Credenciales inválidas')
  } finally {
    loading.value = false
  }
}
</script>

<style scoped>
.input {
  width: 100%;
  padding: 0.65rem 0.8rem;
  border: 1px solid #cbd5e1; /* slate-300 */
  border-radius: 0.5rem;
  outline: none;
  font-size: 0.95rem;
  transition: all 0.2s ease;
  background-color: #f9fafb;
}
.input:focus {
  border-color: #3b82f6; /* blue-500 */
  box-shadow: 0 0 0 1px #3b82f6;
  background-color: #ffffff;
}
</style>
