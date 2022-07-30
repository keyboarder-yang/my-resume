import { createApp } from 'vue'
import App from './App.vue'
import {createPureUI} from 'sheep-design-vue'
import 'animate.css';
import './css/common.css'
import 'sheep-design-vue/dist/style.css'
createApp(App).use(createPureUI()).mount('#app')
