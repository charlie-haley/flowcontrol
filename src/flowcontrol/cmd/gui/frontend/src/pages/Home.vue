<template>
  <div>
      <div class="sensors">
          <div class="sensors__item" :class="selected_theme">
              <span class="sensors__item__title">Water</span>
              <span id="temp-water">{{waterTemp}}c</span>
          </div>
          <div class="sensors__item" :class="selected_theme">
              <span class="sensors__item__title">CLOCK</span>
              <span id="clock-gpu">{{gpuClock}}MHz</span>
          </div>
          <div class="sensors__item" :class="selected_theme">
              <span class="sensors__item__title">GPU</span>
              <span id="temp-gpu">{{gpuTemp}}c</span>
          </div>
          <div class="sensors__item" :class="selected_theme">
              <span class="sensors__item__title">CPU</span>
              <span id="temp-cpu">{{cpuTemp}}c</span>
          </div>
      </div>
      <li v-for="fan in fans" :key="fan.Position">
        <Fan :identifier="'fan:'+fan.Position" :name="'Fan '+fan.Position"/>
      </li>
  </div>
</template>

<script>
import * as Wails from '@wailsapp/runtime';
import Fan from "../components/Fan.vue";

export default {
  name: "home",
  components: {
    Fan
  },
  data() {
    return {
      gpuClock: "0",
      gpuTemp: "0",
      cpuTemp: "0",
      waterTemp: "0",
      fans: []
    };
  },
  computed: {
    selected_theme: {
        get() { return this.$store.state.selected_theme; },
        set(value) { this.$store.commit('updateTheme', value); }
    },
  },
  mounted: function() {
      Wails.Events.On("state:fans", fans => {
          if (fans) {
              this.fans = fans
          }
      });
      Wails.Events.On("gpu:clock", gpuClock => {
          if (gpuClock) {
              this.gpuClock = gpuClock
          }
      });
      Wails.Events.On("gpu:temp", gpuTemp => {
          if (gpuTemp) {
              this.gpuTemp = gpuTemp
          }
      });
      Wails.Events.On("cpu:temp", cpuTemp => {
          if (cpuTemp) {
              this.cpuTemp = cpuTemp
          }
      });
      Wails.Events.On("sensor:1:value", waterTemp => {
          if (waterTemp) {
              this.waterTemp = waterTemp
          }
      });
  }
};
</script>

<style scoped>
.fan-page{
  width:100%;
}

.sensors{
  display:inline-flex;
  width:100%;
}

.sensors__item{
  width:25%;
  margin: 25px 25px 0px 25px;
  border-radius: 15px;
  padding: 10px;
  font-size: 1.5em;
  display:block;
  text-align: center;
}
.sensors__item__title{
  font-size: 0.75em;
  text-transform: uppercase;
  font-weight: normal;
  display:block;
  text-align: center;
}
</style>