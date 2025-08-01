<template>
  <!-- Hero Section del Formulario -->
  <div class="bg-gradient-to-br from-blue-50 to-indigo-100 py-16">
    <div class="max-w-4xl mx-auto px-4 text-center">
      <h1 class="text-4xl font-bold text-gray-900 mb-4">Contáctanos</h1>
      <p class="text-xl text-gray-600 max-w-2xl mx-auto">
        Estamos aquí para ayudarte a impulsar tu negocio. Completa el formulario y nos pondremos en contacto contigo en
        menos de 24 horas.
      </p>
    </div>
  </div>

  <div class="max-w-4xl mx-auto px-4 py-16">
    <div class="grid md:grid-cols-2 gap-12 items-start">
      <!-- Información de contacto -->
      <div class="space-y-8">
        <div>
          <h2 class="text-2xl font-semibold text-gray-900 mb-6">¿Por qué elegirnos?</h2>
          <div class="space-y-6">
            <div class="flex items-start space-x-4">
              <div class="flex-shrink-0">
                <div class="w-10 h-10 bg-blue-100 rounded-lg flex items-center justify-center">
                  <svg class="w-6 h-6 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                  </svg>
                </div>
              </div>
              <div>
                <h3 class="text-lg font-medium text-gray-900">Respuesta Rápida</h3>
                <p class="text-gray-600">Te contactamos en menos de 24 horas para discutir tus necesidades.</p>
              </div>
            </div>

            <div class="flex items-start space-x-4">
              <div class="flex-shrink-0">
                <div class="w-10 h-10 bg-green-100 rounded-lg flex items-center justify-center">
                  <svg class="w-6 h-6 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                  </svg>
                </div>
              </div>
              <div>
                <h3 class="text-lg font-medium text-gray-900">Soluciones Personalizadas</h3>
                <p class="text-gray-600">Cada propuesta se adapta específicamente a tu empresa y objetivos.</p>
              </div>
            </div>

            <div class="flex items-start space-x-4">
              <div class="flex-shrink-0">
                <div class="w-10 h-10 bg-purple-100 rounded-lg flex items-center justify-center">
                  <svg class="w-6 h-6 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                      d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z">
                    </path>
                  </svg>
                </div>
              </div>
              <div>
                <h3 class="text-lg font-medium text-gray-900">Soporte Especializado</h3>
                <p class="text-gray-600">Nuestro equipo de expertos te acompañará en cada paso del proceso.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Formulario -->
      <div class="bg-white rounded-2xl shadow-xl p-8 border border-gray-100">
        <h3 class="text-xl font-semibold text-gray-900 mb-6">Solicita tu consulta gratuita</h3>

        <form @submit.prevent="handleSubmit" class="space-y-6">
          <!-- Nombre -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">Nombre completo</label>
            <input v-model="form.name" required
              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-colors duration-200"
              placeholder="Tu nombre completo" />
          </div>

          <!-- Correo -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">Correo electrónico</label>
            <input v-model="form.email" type="email" required
              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-colors duration-200"
              placeholder="correo@empresa.com" />
          </div>

          <!-- Teléfono -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">Teléfono</label>
            <input v-model="form.phone" required
              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-colors duration-200"
              placeholder="+52 (55) 1234-5678" />
          </div>

          <!-- Mensaje -->
          <div>
            <label class="block text-sm font-medium text-gray-700 mb-2">¿Cómo podemos ayudarte?</label>
            <textarea v-model="form.message" required rows="4"
              class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent transition-colors duration-200 resize-none"
              placeholder="Cuéntanos sobre tu proyecto o necesidades..."></textarea>
          </div>

          <!-- Términos y condiciones -->
          <div class="flex items-start space-x-3">
            <input type="checkbox" id="terms" v-model="form.acceptedTerms"
              class="mt-1 h-4 w-4 text-blue-600 border-gray-300 rounded focus:ring-blue-500" />
            <label for="terms" class="text-sm text-gray-600 leading-relaxed">
              Acepto los
              <button type="button" @click="showTerms = true"
                class="text-blue-600 underline hover:text-blue-800 transition-colors">
                términos y condiciones
              </button>
              y autorizo el procesamiento de mis datos personales.
            </label>
          </div>

          <!-- reCAPTCHA -->
          <div class="flex justify-center">
            <RecaptchaV2 @widget-id="handleWidgetId" @error-callback="handleErrorCallback"
              @expired-callback="handleExpiredCallback" @load-callback="handleLoadCallback" />
          </div>

          <!-- Botón de envío -->
          <button type="submit"
            class="w-full bg-gradient-to-r from-blue-600 to-blue-700 hover:from-blue-700 hover:to-blue-800 text-white font-medium py-4 px-6 rounded-lg transition-all duration-200 transform hover:scale-[1.02] focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 shadow-lg">
            <span class="flex items-center justify-center space-x-2">
              <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path>
              </svg>
              <span>Enviar solicitud</span>
            </span>
          </button>

          <!-- Mensajes de respuesta -->
          <div v-if="success" class="bg-green-50 border border-green-200 rounded-lg p-4">
            <div class="flex items-center space-x-2">
              <svg class="w-5 h-5 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
              </svg>
              <p class="text-green-800 font-medium">¡Mensaje enviado correctamente!</p>
            </div>
            <p class="text-green-700 text-sm mt-1">Nos pondremos en contacto contigo pronto.</p>
          </div>

          <div v-if="error" class="bg-red-50 border border-red-200 rounded-lg p-4">
            <div class="flex items-center space-x-2">
              <svg class="w-5 h-5 text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                  d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
              </svg>
              <p class="text-red-800 font-medium">{{ error }}</p>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <!-- Modal de Términos -->
  <div v-if="showTerms" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
    <div class="bg-white rounded-2xl max-w-2xl w-full max-h-[80vh] overflow-hidden shadow-2xl">
      <div class="p-6 border-b border-gray-200">
        <div class="flex items-center justify-between">
          <h2 class="text-2xl font-semibold text-gray-900">Términos y Condiciones</h2>
          <button @click="showTerms = false"
            class="text-gray-400 hover:text-gray-600 transition-colors p-2 hover:bg-gray-100 rounded-lg">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
            </svg>
          </button>
        </div>
      </div>

      <div class="p-6 overflow-y-auto max-h-[60vh]">
        <div class="prose text-gray-700 space-y-4">
          <h3 class="text-lg font-semibold text-gray-900">1. Recopilación de Información</h3>
          <p class="text-sm leading-relaxed">
            Al completar este formulario, usted nos proporciona información personal que incluye su nombre,
            correo electrónico, número de teléfono y mensaje. Esta información se utiliza exclusivamente
            para responder a su consulta y brindarle el servicio solicitado.
          </p>

          <h3 class="text-lg font-semibold text-gray-900">2. Uso de la Información</h3>
          <p class="text-sm leading-relaxed">
            La información proporcionada será utilizada para:
          </p>
          <ul class="text-sm space-y-1 ml-4">
            <li>• Responder a su consulta de manera oportuna</li>
            <li>• Proporcionar información sobre nuestros servicios</li>
            <li>• Mejorar la calidad de nuestro servicio al cliente</li>
          </ul>

          <h3 class="text-lg font-semibold text-gray-900">3. Protección de Datos</h3>
          <p class="text-sm leading-relaxed">
            Nos comprometemos a proteger su información personal y no compartirla con terceros
            sin su consentimiento explícito, excepto cuando sea requerido por ley.
          </p>

          <h3 class="text-lg font-semibold text-gray-900">4. Derechos del Usuario</h3>
          <p class="text-sm leading-relaxed">
            Usted tiene derecho a solicitar el acceso, corrección o eliminación de sus datos
            personales en cualquier momento contactándonos a través de los medios proporcionados.
          </p>
        </div>
      </div>

      <div class="p-6 border-t border-gray-200 bg-gray-50">
        <div class="flex justify-end space-x-3">
          <button @click="showTerms = false"
            class="px-6 py-2 text-gray-600 hover:text-gray-800 font-medium transition-colors">
            Cerrar
          </button>
          <button @click="showTerms = false; form.acceptedTerms = true"
            class="px-6 py-2 bg-blue-600 hover:bg-blue-700 text-white font-medium rounded-lg transition-colors">
            Aceptar Términos
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import { reactive, ref, onMounted } from 'vue'
import { useRouter } from 'vue-router'
import Navbar from './Navbar.vue'
import emailjs from 'emailjs-com'
import { RecaptchaV2 } from "vue3-recaptcha-v2";

const router = useRouter()

const emailjsServiceId = import.meta.env.VITE_EMAILJS_SERVICE_ID
const emailjsTemplateId = import.meta.env.VITE_EMAILJS_TEMPLATE_ID
const emailjsUserId = import.meta.env.VITE_EMAILJS_USER_ID

const form = reactive({
  name: '',
  email: '',
  phone: '',
  message: '',
  acceptedTerms: false
})

const success = ref(false)
const error = ref('')
const showTerms = ref(false)
const recaptchaWidgetId = ref(null)
const recaptchaToken = ref('')

const apiUrl = import.meta.env.VITE_API_URL

// Funciones del reCAPTCHA
const handleWidgetId = (widgetId) => {
  recaptchaWidgetId.value = widgetId
}

const handleErrorCallback = () => {
  error.value = 'Error en reCAPTCHA. Intenta de nuevo.'
  recaptchaToken.value = ''
}

const handleExpiredCallback = () => {
  recaptchaToken.value = ''
}

const handleLoadCallback = () => {
  console.log('reCAPTCHA cargado correctamente')
}

// Función para obtener el token del reCAPTCHA
const getRecaptchaToken = () => {
  if (window.grecaptcha && recaptchaWidgetId.value !== null) {
    return window.grecaptcha.getResponse(recaptchaWidgetId.value)
  }
  return ''
}

// Manejo de envío
const handleSubmit = async () => {
  if (!form.acceptedTerms) {
    error.value = 'Debes aceptar los términos y condiciones.'
    return
  }

  const token = getRecaptchaToken()
  if (!token) {
    error.value = 'Completa el reCAPTCHA antes de continuar.'
    return
  }

  try {
    const res = await fetch(`${apiUrl}/contact`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ...form, recaptchaToken: token })
    })

    if (res.ok) {
      success.value = true
      error.value = ''

      // Resetear el reCAPTCHA
      if (window.grecaptcha && recaptchaWidgetId.value !== null) {
        window.grecaptcha.reset(recaptchaWidgetId.value)
      }

      await emailjs.send(
        emailjsServiceId,
        emailjsTemplateId, {
        name: form.name,
        email: form.email,
        phone: form.phone,
        message: form.message
      },
        emailjsUserId
      )

      Object.assign(form, {
        name: '',
        email: '',
        phone: '',
        message: '',
        acceptedTerms: false
      })
    } else {
      error.value = 'Error al enviar. Intenta más tarde.'
    }
  } catch (e) {
    error.value = 'Error de red: ' + e.message
  }
}

const logout = () => {
  localStorage.removeItem('token')
  router.push('/login')
}
</script>