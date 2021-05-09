<template>
  <div class="settings-appinfo">
      <FanIcon class="fan-icon"/>
      <span class="settings-appinfo-title">Flowcontrol</span><br/>
      <span class="settings-appinfo-version">{{ version }}</span><br/>
      <a href="https://github.com/charlie-haley/flowcontrol">GitHub</a>
  </div>
</template>

<script>
import FanIcon from "../components/FanIcon.vue";

export default {
  name: "settings",
  components: {
    FanIcon
  },
  data() {
    return {
      version: " "
    };
  },
  mounted: function() {
      var self = this;
      window.backend.version().then(result => {
        self.version = result;
      });
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
.settings-appinfo-title{
  font-size: 2em;
}
.settings-appinfo-version{
  font-size: 1.5em;
}
.fan-icon{
  fill: rgb(146, 92, 78);
  width: 100px;
}

</style>