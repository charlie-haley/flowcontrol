<template>
  <div class="settings__item" :class="selected_theme">
      <div class="settings__item__info">
          <span class="settings__item__title">{{title}}</span>
          <span class="settings__item__tag">{{tag}}</span>
      </div>
      <div class="settings__item__controls">
        <ToggleSwitch v-if="mode == 'toggle'" @input="handleInput" class="settings__item__controls_switch" v-model="toggle" :trueValue="trueValue" :falseValue="falseValue"/>
        <div v-if="mode == 'expand'">
          <span v-if="!expanded" slot="control" v-on:click="expanded = true" class="material-icons settings__item__controls_expand">expand_more</span>
          <span v-if="expanded" slot="control" v-on:click="expanded = false" class="material-icons settings__item__controls_expand">expand_less</span>
        </div>
        
      </div>
      <div v-show="expanded" class="settings_expanded">
        <slot/>
      </div>
  </div>
</template>

<script>
import ToggleSwitch from "../components/ToggleSwitch.vue";

export default {
  name: "SettingsItem",
  props: ['value', 'title', 'tag', 'mode', 'trueValue', 'falseValue'],
  components: {
    ToggleSwitch,
  },
  computed: {
    selected_theme: {
        get() { return this.$store.state.selected_theme; },
        set(value) { this.$store.commit('updateTheme', value); }
    },
  },
  data () {
    return {
      toggle: this.value,
      expanded: false
    }
  },
  methods: {
    handleInput () {
      this.$emit('input', this.toggle)
    },
    expand () {
      this.$emit('input', this.toggle)
    }
  }
};
</script>

<style scoped>
.settings_expanded{
  margin:1em 3em 3em 3em;
  width:100%;
}

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
</style>
