<template>
  <div class="bg-blue-50 text-gray-800 font-sans">
    <!-- Header -->
    <header class="bg-white shadow">
      <div class="max-w-7xl mx-auto px-4 py-6 flex justify-between items-center">
        <h1 class="text-xl font-bold text-blue-600">LeadCRM</h1>
        <a href="/login" class="bg-blue-600 text-white px-4 py-2 rounded-md hover:bg-blue-700 transition">
          Comenzar
        </a>
      </div>
    </header>

    <!-- Hero Section -->
    <section class="py-20 px-6 text-center bg-gradient-to-b from-blue-100 to-white">
      <h2 class="text-4xl font-extrabold mb-4 text-blue-800">Convierte visitas en clientes</h2>
      <p class="text-lg mb-6 max-w-2xl mx-auto text-gray-700">
        Un <strong>lead</strong> es una persona interesada en tus servicios. Con LeadCRM puedes capturarlos, darles seguimiento y cerrar más ventas con facilidad.
      </p>
      <a href="/login" class="bg-blue-600 text-white px-6 py-3 rounded-lg text-lg hover:bg-blue-700 transition">
        Empieza gratis
      </a>
    </section>

    <!-- Features Section -->
    <section class="max-w-5xl mx-auto py-16 px-4 grid md:grid-cols-3 gap-10 text-left">
      <div>
        <h3 class="text-xl font-semibold mb-2 text-blue-700">📩 Captura Leads</h3>
        <p class="text-gray-700">Formulario integrado para recopilar información de clientes potenciales en segundos.</p>
      </div>
      <div>
        <h3 class="text-xl font-semibold mb-2 text-blue-700">📊 Organiza y Clasifica</h3>
        <p class="text-gray-700">Visualiza todos tus leads en un panel claro, con filtros por estado y prioridad.</p>
      </div>
      <div>
        <h3 class="text-xl font-semibold mb-2 text-blue-700">📈 Mejora tus conversiones</h3>
        <p class="text-gray-700">Haz seguimiento de cada contacto, optimiza tus campañas y aumenta tus cierres de venta.</p>
      </div>
    </section>

    <!-- Contact Title -->
    <div class="py-20 text-center">
      <h1 class="text-3xl font-bold text-blue-800">📝 Formulario de Contacto</h1>
      <p class="text-sm text-gray-600 mt-2">Completa los campos a continuación y nos pondremos en contacto contigo.</p>
    </div>

    <!-- Contact Form -->
    <form
      @submit.prevent="handleSubmit"
      class="w-full max-w-xl p-6 space-y-4 bg-white rounded-xl shadow-md mx-auto"
    >
      <div>
        <label class="block text-sm font-medium mb-1">Nombre completo:</label>
        <input
          v-model="form.name"
          required
          class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-200"
        />
      </div>

      <div>
        <label class="block text-sm font-medium mb-1">Correo:</label>
        <input
          v-model="form.email"
          type="email"
          required
          class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-200"
        />
      </div>

      <div>
        <label class="block text-sm font-medium mb-1">Teléfono:</label>
        <input
          v-model="form.phone"
          required
          class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-200"
        />
      </div>

      <div>
        <label class="block text-sm font-medium mb-1">Mensaje:</label>
        <textarea
          v-model="form.message"
          required
          rows="4"
          class="w-full border border-gray-300 rounded-md px-3 py-2 focus:outline-none focus:ring-2 focus:ring-blue-200"
        ></textarea>
      </div>

      <div class="flex items-center space-x-3">
        <input
          type="checkbox"
          id="terms"
          v-model="form.acceptedTerms"
          class="h-4 w-4 text-blue-600 border-gray-300 rounded"
        />
        <label for="terms" class="text-sm text-gray-700">Acepto los</label>
        <button
          type="button"
          @click="showTerms = true"
          class="text-sm text-blue-600 underline hover:text-blue-800"
        >
          Términos y condiciones
        </button>
      </div>

      <!-- reCAPTCHA -->
      <div
        class="g-recaptcha mt-4"
        ref="recaptcha"
        :data-sitekey="recaptchaSiteKey"
      ></div>

      <!-- Botón enviar -->
      <button
        type="submit"
        class="w-full flex justify-center items-center gap-2 bg-blue-600 text-white py-2 rounded-md hover:bg-blue-700 transition duration-300 disabled:opacity-50"
        :disabled="isLoading"
      >
        <svg
          v-if="isLoading"
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
        <span>{{ isLoading ? 'Enviando...' : 'Enviar mensaje' }}</span>
      </button>

      <!-- Mensajes -->
      <p v-if="success" class="text-blue-600 mt-2">✅ Enviado correctamente</p>
      <p v-if="error" class="text-red-600 mt-2">❌ {{ error }}</p>
    </form>

    <!-- Modal de Términos -->
    <div
      v-if="showTerms"
      class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50"
    >
      <div class="bg-white p-6 rounded-lg max-w-lg w-full shadow-lg overflow-y-auto max-h-[80vh]">
        <h2 class="text-lg font-semibold mb-4">Términos y Condiciones</h2>
        <p class="text-sm text-gray-700 mb-6">
          Aquí van tus términos y condiciones completos...
        </p>
        <div class="flex justify-end space-x-2">
          <button
            @click="showTerms = false"
            class="text-gray-600 hover:text-gray-800 px-4 py-2 text-sm"
          >
            Cerrar
          </button>
        </div>
      </div>
    </div>

    <!-- Footer -->
    <footer class="text-center text-sm text-gray-600 py-6">
      © 2025 LeadCRM — Todos los derechos reservados.
    </footer>
  </div>
</template>

<script setup>
import { reactive, ref, onMounted } from 'vue'
import { useRouter } from 'vue-router'
import emailjs from 'emailjs-com'

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

const recaptcha = ref(null)
const recaptchaWidgetId = ref(null)

const apiUrl = import.meta.env.VITE_API_URL
const recaptchaSiteKey = import.meta.env.VITE_SITE_KEY

const isLoading = ref(false)

if (!recaptchaSiteKey) {
  console.error('❌ No se encontró VITE_SITE_KEY en tu archivo .env')
}

onMounted(() => {
  const renderCaptcha = () => {
    if (
      window.grecaptcha &&
      recaptcha.value &&
      recaptcha.value.children.length === 0 &&
      recaptchaWidgetId.value === null
    ) {
      recaptchaWidgetId.value = grecaptcha.render(recaptcha.value, {
        sitekey: recaptchaSiteKey
      })
    }
  }

  if (window.grecaptcha) {
    renderCaptcha()
  } else {
    const interval = setInterval(() => {
      if (window.grecaptcha) {
        renderCaptcha()
        clearInterval(interval)
      }
    }, 300)
  }
})

const handleSubmit = async () => {
  if (!form.acceptedTerms) {
    error.value = 'Debes aceptar los términos y condiciones.'
    return
  }

  if (!window.grecaptcha || recaptchaWidgetId.value === null) {
    error.value = 'reCAPTCHA aún no está listo.'
    return
  }

  const recaptchaToken = grecaptcha.getResponse(recaptchaWidgetId.value)
  if (!recaptchaToken) {
    error.value = 'Completa el reCAPTCHA antes de continuar.'
    return
  }
  
  isLoading.value = true
  try {
    const res = await fetch(`${apiUrl}/contact`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ ...form, recaptchaToken })
    })

    if (res.ok) {
      success.value = true
      error.value = ''
      grecaptcha.reset(recaptchaWidgetId.value)

      await emailjs.send(
        emailjsServiceId,
        emailjsTemplateId,
        {
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
  } finally {
    isLoading.value = false
  }
}
</script>