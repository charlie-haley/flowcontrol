<template>
  <div id="app">
  <div class="nav-bar">
      <div class="nav-bar__row">
          <div class="nav-bar__item">
            <router-link to="/">Home</router-link>
          </div>
          <div class="nav-bar__item" v-if="rgb_enabled" >
              <router-link to="/Led">LED</router-link>
          </div>
          <div class="nav-bar__item">
              <router-link to="/settings">Settings</router-link>
          </div>
      </div>
  </div>
    <div class="fan-page">
        <keep-alive>
            <router-view :key="$route.fullPath" />
        </keep-alive>
    </div>

    <v-style v-if="rgb_enabled">
        .nav-bar__item{
            min-width:33%;
        }
    </v-style>
    <v-style v-if="!rgb_enabled">
        .nav-bar__item{
            min-width:50%;
        }
    </v-style>
    <!-- Global Theme Styles -->
    <v-style v-if="selected_theme == 'theme-default'">
        html body{
            background-color: #fffbf5;
            color:rgb(146, 92, 78);
        }
        .nav-bar__item a{ 
            color: rgb(146, 92, 78);
        }
        .nav-bar__item .active, .nav-bar__item a:hover{ 
            background-color: #f7ead4;
        }
    </v-style>
    <v-style v-if="selected_theme == 'theme-dark'">
        html body{
            background-color: #333333;
            color:#f7ead4;
        }
        .nav-bar__item a{ 
            color: #f7ead4;
        }
        .nav-bar__item .active, .nav-bar__item a:hover{ 
            background-color: #494949;
        }
    </v-style>
    <!-- End -->
  </div>
</template>

<script>
import "./assets/css/main.css";

export default {
  name: "app",
  computed: {
    selected_theme: {
        get() { return this.$store.state.selected_theme; },
        set(value) { this.$store.commit('selected_theme', value); }
    },
    rgb_enabled: {
        get() { return this.$store.state.rgb_enabled; },
        set(value) { this.$store.commit('enableRgb', value); }
    }
  }
};
</script>
      
<style scoped>
.fan-page{
  width:100%;
}

.nav-bar{
    width: 100%;
    display: inline-flex;
    padding-bottom: 50px;
    padding-top: 25px;
}
.nav-bar__item{
    text-align: center;
}
.nav-bar__row{
    width: 50%;
    margin: 0 auto;
    display: inline-flex;
}
.nav-bar__item a{ 
    border:none;
    background: transparent;
    border-radius: 20px;
    text-transform: uppercase;
    font-weight: bold;
    text-decoration: none;
    padding: 5px 20px;
}

.nav-bar__item a:hover{ 
    transition: 0.3s;
}
</style>