<template>
  <div>
    <div class="settings-appinfo">
        <Logo class="logo"/>
        <span class="settings-appinfo-version">{{ version }}</span><br/>
        <a href="https://github.com/charlie-haley/flowcontrol" target="_blank" >GitHub</a>
    </div>
    <div class="settings__item">
        <div class="settings__item__info">
          <span class="settings__item__title">Auto fan curve</span>
          <span class="settings__item__tag">Configure the fan curve for when a fan is in auto mode.</span>
        </div>
        <div class="settings__item__controls">
          <span class="material-icons settings__item__controls_expand">expand_more</span>
        </div>
    </div>
    <div class="settings__item">
        <div class="settings__item__info">
            <span class="settings__item__title">Sensors</span>
            <span class="settings__item__tag">Select what sensor data to show on the home page.</span>
        </div>
        <div class="settings__item__controls">
          <span class="material-icons settings__item__controls_expand">expand_more</span>
        </div>
    </div>
    <div class="settings__item">
        <div class="settings__item__info">
            <span class="settings__item__title">RGB control</span>
            <span class="settings__item__tag">This feature is still experimental.</span>
        </div>
        <div class="settings__item__controls">
          <ToggleSwitch class="settings__item__controls_switch" />
        </div>
    </div>
  </div>
</template>

<script>
import Logo from "../components/Logo.vue";
import ToggleSwitch from "../components/ToggleSwitch.vue";

export default {
  name: "settings",
  components: {
    Logo,
    ToggleSwitch
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

.settings__item__info{
    display: grid;
    grid-template-columns: 1fr;
    display:grid;
    width:70%;
    text-align: left;
}

.settings__item__info span{
  display:block
}

.settings__item__controls{
    display:inline-block;
    width:30%;
}

.settings__item__controls_expand{
    float: right;
    margin: 20px;
}

.settings__item__controls_switch{
    float: right;
    margin: 15px;
}

.settings__item{
  background-color: #f7ead4;
  margin: 25px 25px 0px 25px;
  border-radius: 15px;
  padding: 0px;
  display: flex;
  flex-wrap: wrap;
}

.settings__item__title{
  padding: 0.5em 1em;
  font-size: 1em;
  width: 100%;
}

.settings__item__tag{
  padding: 0.25em 1.5em;
  font-weight:normal;
  font-size: 0.75em;
  width: 100%;
}

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
  fill: rgb(146, 92, 78);
  width: 300px;
}
</style>