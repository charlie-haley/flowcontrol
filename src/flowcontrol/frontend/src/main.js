import 'core-js/stable';
import 'regenerator-runtime/runtime';
import 'material-design-icons/iconfont/material-icons.css'
import Vue from 'vue';
import Vuex from 'vuex'
import App from './App.vue';
import router from './router'

Vue.config.productionTip = false;
Vue.config.devtools = true;

import * as Wails from '@wailsapp/runtime';

//Create a v-style component to allow rendering style in templates
Vue.component('v-style', {
  render: function (createElement) {
    return createElement('style', this.$slots.default)
  }
});

Vue.use(Vuex)

const store = new Vuex.Store({
  state: {
    selected_theme: "theme-default",
    rgb_enabled: 0
  },
  mutations: {
    updateTheme (state, theme) {
      state.selected_theme = theme
    },
    enableRgb (state, enabled) {
      state.rgb_enabled = enabled
    }
  }
  })

Wails.Init(() => {
  new Vue({
    render: (h) => h(App),
    // add the router to the Vue constructor
    router,
    store: store,
    mounted() {
      this.$router.replace('/')
    },
  }).$mount('#app')
})