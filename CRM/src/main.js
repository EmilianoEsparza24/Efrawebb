import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import router from '../router'
// import { VueReCaptcha } from 'vue-recaptcha-v3'

const app = createApp(App)

// // Agrega reCAPTCHA a la app
// app.use(VueReCaptcha, {
//   siteKey: import.meta.env.VITE_SITE_KEY,
//   loaderOptions: {
//     useRecaptchaNet: true,
//   },
// })

app.use(router)
app.mount('#app')
