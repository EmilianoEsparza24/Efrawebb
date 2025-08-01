import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";
import router from "../router";
import { install } from "vue3-recaptcha-v2";

createApp(App)
  .use(install, {
    sitekey: import.meta.env.VITE_SITE_KEY,
    cnDomains: false,
  })
  .use(router)
  .mount("#app");
