<template>
  <div class="nav-bar">
      <div class="nav-bar__row">
          <div class="nav-bar__item">
              <a href="/home">Home</a>
          </div>
          <div class="nav-bar__item">
              <a href="/led">LED</a>
          </div>
          <div class="nav-bar__item">
              <a href="/settings">Settings</a>
          </div>
      </div>
  </div>
</template>

<style scoped>
.nav-bar{
    width: 100%;
    display: inline-flex;
    padding-bottom: 50px;
    padding-top: 25px;
}
.nav-bar__item{
    min-width:33%;
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
    color: rgb(146, 92, 78);
    text-transform: uppercase;
    font-weight: bold;
    text-decoration: none;
    padding: 5px 20px;
}
.nav-bar__item .active{ 
    background-color: #f7ead4;
}

.nav-bar__item a:hover{ 
    background-color: #f7ead4;
    transition: 0.3s;
}
</style>
