<!------------------------------------------------------------------------------------------------>
<template>
    <router-view />
</template>
<!------------------------------------------------------------------------------------------------>
<script>
</script>
<!------------------------------------------------------------------------------------------------>
<style>
#app{
  background-color: #EED6C7;
}
.page-opacity-enter-active,
.page-opacity-leave-active {
  transition: 600ms ease all;
}
.page-opacity-enter-from,
.page-opacity-leave-to {
  opacity: 10;
}
.container {
  margin: 0 auto;
  max-width: 1200px; 
  padding: 0 20px;
}
nav {
  padding: 30px;
  /* font-family: "Fascinate", system-ui; */
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #93a04a;
}
</style>