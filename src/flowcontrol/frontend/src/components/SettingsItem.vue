<template>
  <div class="settings__item" :class="selected_theme">
      <div class="settings__item__info">
          <span class="settings__item__title">{{title}}</span>
          <span class="settings__item__tag">{{tag}}</span>
      </div>
      <div class="settings__item__controls">
        <slot name="control"></slot>
      </div>
  </div>
</template>

<script>
export default {
  name: "SettingsItem",
  props: ['title', 'tag'],
  data: function() {
        return {
            checked: this.value === this.trueValue
        };
  },
  computed: {
    selected_theme: {
        get() { return this.$store.state.selected_theme; },
        set(value) { this.$store.commit('updateTheme', value); }
    },
  },
  methods: {
        change: function() {
            this.checked = !this.checked;
            if(this.checked){
              this.$emit('input', this.trueValue ?? 1);
            }
            else{
              this.$emit('input', this.falseValue ?? 0);
            }

        }
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
