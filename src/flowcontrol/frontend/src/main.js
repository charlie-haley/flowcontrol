import 'core-js/stable';
import 'regenerator-runtime/runtime';
import 'material-design-icons/iconfont/material-icons.css'
import Vue from 'vue';
import App from './App.vue';
import router from './router'

Vue.config.productionTip = false;
Vue.config.devtools = true;

import * as Wails from '@wailsapp/runtime';

//Set default theme
Vue.prototype.$selected_theme = "theme-default"

//Create a v-style component to allowe rendering style in templates
Vue.component('v-style', {
	render: function (createElement) {
		return createElement('style', this.$slots.default)
	}
});

Wails.Init(() => {
	new Vue({
		render: (h) => h(App),
		// add the router to the Vue constructor
		router,
		mounted() {
			this.$router.replace('/')
		},
	}).$mount('#app')
})