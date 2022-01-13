<template>
  <div class="colour-swatch__container">
     <div v-for="colour in colours" :key="colour" class="colour-swatch__item" v-bind:style="{ background: 'rgb(' + colour + ')' }" v-on:click="setColour(colour)"></div>
  </div>
</template>

<script>
import * as Wails from '@wailsapp/runtime';

export default {
  name: "led",
  data: 
    function () {
     return {
      colours: [
        "0, 0, 0",
        "224, 111, 34",
        "255, 150, 166",
        "255, 255, 255",
        "176, 255, 97",
        "94, 167, 255",
        "255, 138, 251",
        "255, 77, 77",
        "255, 255, 18",
        "255, 125, 18"
      ]
    }
  },
  methods: {
    setColour: function (colour) {
      console.log(colour.replace(/,/g,''))
      Wails.Events.Emit("led:colour", colour.replace(/,/g,''))
    }
  }
}
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