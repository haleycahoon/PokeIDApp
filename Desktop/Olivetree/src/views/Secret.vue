<!------------------------------------------------------------------------------------------------>
<template>
  <div>
    <Header />
    <div id="app">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 text-center">
            <div id="main text">
              <br />
              <br />
              <h3 v-if="!userLoggedIn">Please log in to access this page</h3>
              <h1 v-else>Welcome, {{ userName }}</h1>
              <br />
              <!-- display secret component only when userLoggedIn is true -->
              <GroceryList v-if="userLoggedIn" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <Footer />
</template>
<!------------------------------------------------------------------------------------------------>
<script setup>
import { ref } from "vue";
import { getAuth, onAuthStateChanged } from "firebase/auth";
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import GroceryList from "../components/GroceryList.vue";
const userLoggedIn = ref(false);
const userName = ref("");
// check if a user is logged in on page load
const auth = getAuth();
onAuthStateChanged(auth, (user) => {
  if (user) {
    userLoggedIn.value = true;
    userName.value = user.displayName || "User";
  }
});
</script>
<!------------------------------------------------------------------------------------------------>
<style>
</style>
