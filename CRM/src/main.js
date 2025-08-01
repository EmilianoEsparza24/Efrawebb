import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";
import router from "../router";
import { install } from "vue3-recaptcha-v2";

createApp(App)
  .use(install, {
    sitekey: "6LfEgY0rAAAAAPb1EZVec5XbDWoxq-OZ9yoMaGk3",
    cnDomains: false,
  })
  .use(router)
  .mount("#app");
