<template>
  <div>
    <div v-if="full">
      <h1 class="text-6xl text-ui-primary flex">flowcontrol</h1>
    </div>
    <div v-if="!full">
      <Icon class="icon"/>
    </div>
  </div>
</template>

<script>
import Icon from '@/components/Icon';

export default {
  components: {
    Icon
  },
  props: {
    full:{
      type: Boolean,
      default: false
    }
  }
};
</script>

<style scoped>
  h1{
    width: 100%;
    font-family: 'YoungSerif';
    margin-bottom: 0.1rem;
  }

  .icon{
    width:50px;
    transform-origin: 43% 49%;
    transition: transform 3s ease-out;
  }
  .icon:hover{
    transform: rotate(1040deg);
  }
</style>
