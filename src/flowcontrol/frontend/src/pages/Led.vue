<template>
  <div class="colour-swatch__container">
     <div class="colour-swatch__item" style="background: rgb(0, 0, 0);"></div>
     <div class="colour-swatch__item" style="background: rgb(224, 111, 34);"></div>
     <div class="colour-swatch__item" style="background: rgb(255, 150, 166);"></div>
     <div class="colour-swatch__item" style="background: rgb(255, 255, 255);"></div>
     <div class="colour-swatch__item" style="background: rgb(176, 255, 97);"></div>
     <div class="colour-swatch__item" style="background: rgb(94, 167, 255);"></div>
     <div class="colour-swatch__item" style="background: rgb(255, 138, 251);"></div>
     <div class="colour-swatch__item" style="background: rgb(255, 77, 77);"></div>
     <div class="colour-swatch__item" style="background: rgb(255, 255, 18);"></div>
     <div class="colour-swatch__item" style="background: rgb(255, 125, 18);"></div>
  </div>
</template>

<script>
import * as Wails from '@wailsapp/runtime';

export default {
  name: "led",
  data() {
    return {
      gpuClock: "0",
      gpuTemp: "0",
      cpuTemp: "0",
      waterTemp: "0"
    };
  },
  methods: {
    colour: function () {
      Wails.Events.Emit(this.fanEvent + ":speed", this.fan.Speed)
    }
  }
};
</script>

<style scoped>
.colour-swatch__container{
  display: inline-block;
}
.colour-swatch__item{
  display: inline-block;
  width: 100px;
  height: 100px;
  border-radius:15px;
  margin:10px;
  box-shadow: 0px 0px 1px 2px #F4F4F4;
}
</style>