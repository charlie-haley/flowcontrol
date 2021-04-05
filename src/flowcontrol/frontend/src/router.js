import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from './pages/Home.vue'
import Settings from './pages/Settings.vue'
import Led from './pages/Led.vue'

Vue.use(VueRouter)

const routes = [
    { component: Home, name: 'Home', path: '/' },
    { component: Settings, name: 'Settings', path: '/settings' },
    { component: Led, name: 'LED', path: '/led' }
]

const router = new VueRouter({
  mode: 'abstract', // mode must be set to 'abstract'
  routes,
})

export default router