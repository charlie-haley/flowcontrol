<template>
    <div class="fan-page__item">
        <div class="fan-page__container">
            <div class="fan-page__container__icon">
                <FanIcon class="fan-icon"/>
            </div>
            <div class="fan-page__container__title">
                <span>Bottom Radiator</span>
                <span class="fan-page__container__speed">1634rpm</span>
            </div>
            <div class="fan-page__container__configure">
              <span v-if="!fan.Auto" alt="Enable manual fan control" class="material-icons" v-on:click="auto">lock_open</span>
              <span v-if="fan.Auto" alt="Enable auto fan control" class="material-icons" v-on:click="auto">lock</span>
            </div>
        </div>
        <input type="range" min="0" max="100" step="1" v-model="fan.Speed" :disabled="fan.Auto == 1" @mouseup="speed"> 
    </div>
</template>

<script>
import * as Wails from '@wailsapp/runtime';
import FanIcon from "./FanIcon.vue";

export default {
  name: "Fan",
  props: {
    fanEvent: String
  },
  components: {
    FanIcon
  },
  data() {
    return {
      fan: {}
    };
  },
  methods: {
    auto: function () {
      Wails.Events.Emit(this.fanEvent + ":auto", !this.fan.Auto ? 1 : 0)
    },
    speed: function () {
      console.log(this.fan.Speed)
      Wails.Events.Emit(this.fanEvent + ":speed", this.fan.Speed)
    }
  },
  mounted: function() {
      Wails.Events.On(this.fanEvent, fan => {
          if (fan) {
              //Ensure that the slider value doesn't get overwritten if the user is manually controlling the slider
              let speed = this.fan.Speed
              this.fan = fan
              if(!this.fan.Auto){
                this.fan.Speed = speed
              }
          }
      });
  }
};
</script>

<style scoped>
.fan-icon{
  fill: rgb(146, 92, 78)
}

.fan-icon {
  width: 100px;
  height: 100px;
  animation-name: spin;
  animation-duration: 4000ms;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}

@keyframes spin {
  from {
      transform:rotate(0deg);
  }
  to {
      transform:rotate(360deg);
  }
}

.fan-page__item{
  background-color: #f7ead4;
  border-radius: 25px 25px 25px 25px;
  margin: 25px 25px 0px 25px;
  overflow: hidden;
}
.fan-page__container{
  background-color: #f7ead4;
  margin: 25px 25px 0px 25px;
  display:flex;
}
.fan-page__container__icon{
    display:inline-block;
    width:30%;
}
.fan-page__container__title{
    display:inline-block;
    width:30%;
    font-size: 1.5em;
    padding: 0.5em;
    vertical-align: top;
}
.fan-page__container__configure{
    display:inline-block;
    width:37%;
    vertical-align: top;
    text-align: right;
}

.fan-page__container__speed{
    display: block;
    font-size: 0.8em;
    font-weight: normal;
    margin-top: 1em;
}
.fan-page__item input{
    width:100%;
    padding: 0;
}

input[type=range] {
  width: 100%;
  margin: 1.8px 0;
  background-color: transparent;
  -webkit-appearance: none;
      position: relative;
    margin-bottom: -5px;
}
input[type=range]:focus {
  outline: none;
}
input[type=range]::-webkit-slider-runnable-track {
  background: #925c4e;
  border: 0;
  width: 100%;
  height: 16.4px;
  cursor: pointer;
}
input[type=range]::-webkit-slider-thumb {
  margin-top: -1.8px;
  width: 20px;
  height: 20px;
  background: #ffffff;
  border: 0;
  border-radius: 20px;
  cursor: pointer;
  -webkit-appearance: none;
}
input[type=range]:focus::-webkit-slider-runnable-track {
  background: #ad7566;
}
input[type=range]::-moz-range-track {
  background: #925c4e;
  border: 0;
  width: 100%;
  height: 16.4px;
  cursor: pointer;
}
input[type=range]::-moz-range-thumb {
  width: 20px;
  height: 20px;
  background: #ffffff;
  border: 0;
  border-radius: 20px;
  cursor: pointer;
}
input[type=range]::-ms-track {
  background: transparent;
  border-color: transparent;
  border-width: 1.8px 0;
  color: transparent;
  width: 100%;
  height: 16.4px;
  cursor: pointer;
}
input[type=range]::-ms-fill-lower {
  background: #925c4e;
  border: 0;
}
input[type=range]::-ms-fill-upper {
  background: rgba(146, 92, 78, 0.4);
  border: 0;
}
input[type=range]::-ms-thumb {
  width: 20px;
  height: 20px;
  background: #ffffff;
  border: 0;
  border-radius: 20px;
  cursor: pointer;
  margin-top: 0px;
  /*Needed to keep the Edge thumb centred*/
}
input[type=range]:focus::-ms-fill-lower {
  background: #925c4e;
}
input[type=range]:focus::-ms-fill-upper {
  background: rgba(146, 92, 78, 0.4);
}
/*TODO: Use one of the selectors from https://stackoverflow.com/a/20541859/7077589 and figure out
how to remove the virtical space around the range input in IE*/
@supports (-ms-ime-align:auto) {
  /* Pre-Chromium Edge only styles, selector taken from hhttps://stackoverflow.com/a/32202953/7077589 */
  input[type=range] {
    margin: 0;
    /*Edge starts the margin from the thumb, not the track as other browsers do*/
  }
}


</style>
