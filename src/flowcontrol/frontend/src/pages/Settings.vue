<template>
  <div>
    <div class="settings-appinfo">
        <Logo class="logo"/>
        <span class="settings-appinfo-version">{{ version }}</span><br/>
    </div>

    <SettingsItem title="Dark Mode" tag="Enable dark mode.">
      <ToggleSwitch slot="control" class="settings__item__controls_switch" v-model="selected_theme" trueValue="theme-dark" falseValue="theme-default"/>
    </SettingsItem>
    <SettingsItem title="Auto fan curve" tag="Configure the fan curve for when a fan is in auto mode.">
      <span slot="control" class="material-icons settings__item__controls_expand">expand_more</span>
    </SettingsItem>
    <SettingsItem title="Sensors" tag="Select what sensor data to show on the home page.">
      <span slot="control" class="material-icons settings__item__controls_expand">expand_more</span>
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
.settings-appinfo-version{
  font-size: 1s.5em;
}
.logo{
  width: 300px;
  height: 100px;
}
</style>