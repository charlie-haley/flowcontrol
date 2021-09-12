<template>
  <label class="switch">
    <input type="checkbox" :checked="checked" @change="change"/>
    <span class="slider round"></span>
  </label>
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
  methods: {
        change: function() {
            this.checked = !this.checked;
            if(this.checked){
              this.$emit('input', this.trueValue);
            }
            else{
              this.$emit('input', this.falseValue);
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
  background-color: #cfbc9e;
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
  background-color: #f7ead4;
  -webkit-transition: .4s;
  transition: .4s;
  border-radius: 50%;
}

input:checked + .slider {
  background-color: rgb(146, 92, 78);;
}

input:focus + .slider {
  box-shadow: 0 0 1px rgb(146, 92, 78);;
}

input:checked + .slider:before {
  -webkit-transform: translateX(20px);
  -ms-transform: translateX(20px);
  transform: translateX(20px);
}
</style>
