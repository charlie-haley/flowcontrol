<template>
  <div>
    <div class="settings-appinfo">
        <Logo class="logo"/>
        <span class="settings-appinfo-version">{{ version }}</span><br/>
    </div>
    <SettingsItem mode="toggle" v-model="selected_theme" title="Dark Mode" tag="Enable dark mode." trueValue="theme-dark" falseValue="theme-default"/>
 
    <SettingsItem mode="expand" title="Auto fan curve" tag="Configure the fan curve for when a fan is in auto mode.">
      <input type="radio" v-model="color" value="0">Sensor 1
      <input type="radio" v-model="color" value="1">Sensor 2
      <canvas id="chart"></canvas>
    </SettingsItem>

    <SettingsItem  mode="expand" title="Home" tag="Select what data to show on the home page.">
    </SettingsItem>

    <SettingsItem  mode="expand" title="Sensors" tag="Assign names to the conncted sensors.">
    </SettingsItem>

    <SettingsItem title="RGB Control" tag="This feature is still experimental and only works with 8 LED WS2812b strips.">
      <ToggleSwitch slot="control" class="settings__item__controls_switch" v-model="rgb_enabled" />
    </SettingsItem>

    <SettingsItem title="Enable Animations" tag="Enable animations application wide.">
      <ToggleSwitch slot="control" class="settings__item__controls_switch" v-model="animations_enabled" />
    </SettingsItem>

    <v-style v-if="selected_theme == 'theme-default'">
        .logo{
          fill: rgb(146, 92, 78);
        }
    </v-style>
    <v-style v-if="selected_theme == 'theme-dark'">
        .logo{
          fill: #f7ead4;
        }
    </v-style>
  </div>
</template>

<script>
import Chart from 'chart.js'
// eslint-disable-next-line no-unused-vars
import chartOptions from '../assets/js/chartData.js'
import 'chartjs-plugin-dragdata'
import 'chartjs-plugin-annotation'

import Logo from "../components/Logo.vue";
import ToggleSwitch from "../components/ToggleSwitch.vue";
import SettingsItem from "../components/SettingsItem.vue";

export default {
  name: "settings",
  components: {
    Logo,
    ToggleSwitch,
    SettingsItem
  },
  data() {
    return {
      version: " ",
      color: 0
    };
  },
  computed: {
    selected_theme: {
        get() { return this.$store.state.selected_theme; },
        set(value) { this.$store.commit('updateTheme', value); }
    },
    rgb_enabled: {
        get() { return this.$store.state.rgb_enabled; },
        set(value) { this.$store.commit('enableRgb', value); }
    },
    animations_enabled: {
        get() { return this.$store.state.animations_enabled; },
        set(value) { this.$store.commit('enableAnimations', value); }
    }
  },
  mounted: function() {
      this.createChart('chart', chartOptions)
      var self = this;
      window.backend.version().then(result => {
        self.version = result;
      });
  },
  methods: {
    createChart(chartId, chartData) {
      const ctx = document.getElementById(chartId).getContext('2d');
      chartData.data.labels = ["15c", "25c", "35c", "45c", "55c", "65c"];
      chartData.data.datasets[0].data = [20, 20, 25, 35, 75, 100];

      //Current temp
      chartData.options.annotation.annotations[0].value=50
      new Chart(ctx, {
        type: chartData.type,
        data: chartData.data,
        options: chartData.options,
      })
    }
  }
};
</script>

<style scoped>
.settings-appinfo {
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    -webkit-flex-direction: column;
    -ms-flex-direction: column;
    flex-direction: column;
    -webkit-flex-wrap: nowrap;
    -ms-flex-wrap: nowrap;
    flex-wrap: nowrap;
    -webkit-justify-content: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-align-content: stretch;
    -ms-flex-line-pack: stretch;
    align-content: stretch;
    -webkit-align-items: center;
    -ms-flex-align: center;
    align-items: center;
    }

.settings-appinfo span{
    -webkit-order: 0;
    -ms-flex-order: 0;
    order: 0;
    -webkit-flex: 0 1 auto;
    -ms-flex: 0 1 auto;
    flex: 0 1 auto;
    -webkit-align-self: auto;
    -ms-flex-item-align: auto;
    align-self: auto;
    }
.settings-appinfo-version{
  font-size: 1s.5em;
}
.logo{
  width: 300px;
  height: 100px;
}
</style>