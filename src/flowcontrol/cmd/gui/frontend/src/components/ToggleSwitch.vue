<template>
  <div>
    <label class="switch">
      <input type="checkbox" :checked="checked" @change="change"/>
      <span class="slider round"></span>
    </label>
    <v-style v-if="selected_theme == 'theme-default'">
      input:checked + .slider {
        background-color: rgb(146, 92, 78);
      }
      input:focus + .slider {
        box-shadow: 0 0 1px rgb(146, 92, 78);
      }
      .slider:before{
        background-color: #f7ead4;
      }
      .slider{
          background-color:#CEB19E;
      }
    </v-style>
    <v-style v-if="selected_theme == 'theme-dark'">
      input:checked + .slider {
        background-color: #f7ead4;
      }
      input:focus + .slider {
        box-shadow: 0 0 1px #f7ead4;
      }
      .slider:before{
        background-color: #494949;;
      }
      .slider{
          background-color:#8F8A81;
      }
    </v-style>
  </div>
</template>

<script>
export default {
  name: "ToggleSwitch",
  props: ['value', 'trueValue', 'falseValue'],
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
.switch {
  position: relative;
  display: inline-block;
  width: 54px;
  height: 28px;
}

.switch input {
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 34px;
}

.slider:before {
  position: absolute;
  content: "";
  height: 20px;
  width: 20px;
  left: 4px;
  bottom: 4px;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 50%;
}

input:checked + .slider:before {
  -webkit-transform: translateX(20px);
  -ms-transform: translateX(20px);
  transform: translateX(20px);
}
</style>
