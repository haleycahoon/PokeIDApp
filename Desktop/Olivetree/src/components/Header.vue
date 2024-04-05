<template>
  <div>
    <div id="app">
      <div class="containerone">
        <nav class="navbar navbar-expand-lg">
          <div class="container-fluid">
            <img class="brand" src="../assets/olivetree.png" alt="Image 1">
            <router-link to="/" class="navbar-brand"></router-link>
            <button
              class="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarNav"
              aria-controls="navbarNav"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <router-link to="/" class="nav-link">Home</router-link>
                </li>
                <li class="nav-item">                  
                <router-link to="/Men" class="nav-link">Men</router-link>
                </li>
                <li class="nav-item">
                  <router-link to="/Women" class="nav-link">Women</router-link>
                </li>
                <li class="nav-item">
                  <router-link to="/PageTwo" class="nav-link"
                    >Accessories</router-link
                  >
                </li>
                <li class="nav-item">
                  <router-link to="/Secret" class="nav-link"
                    >Secret</router-link
                  >
                </li>
                <li v-if="userLoggedIn" class="nav-item">
                  <span class="nav-link welcome-message"
                    >Welcome back, {{ userName }}</span
                  >
                </li>
                <li v-if="userLoggedIn" class="nav-item">
                  <button @click="logout" class="nav-link-logout auth-button">
                    Logout
                  </button>
                </li>
                <li v-if="!userLoggedIn" class="nav-item">
                  <router-link to="/SignIn" class="nav-link">Login</router-link>
                </li>
                <li v-if="!userLoggedIn" class="nav-item">
                  <router-link to="/Register" class="nav-link"
                    >Register</router-link
                  >
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
  </div>
</template>
  <!-- script for header page -->
<script setup>
import { ref } from "vue";
import { getAuth, onAuthStateChanged, signOut } from "firebase/auth";
import { router } from "../router";
const userLoggedIn = ref(false); // flag to track user authentication state
const userName = ref(""); // store the user's name when logged in
onAuthStateChanged(getAuth(), (user) => {
  if (user) {
    // user is signed in
    userLoggedIn.value = true;
    userName.value = user.displayName; // set the user's name if available, if not use "User"
  } else {
    // user is signed out
    userLoggedIn.value = false;
    userName.value = ""; // reset the user's name
  }
});
// function to log the user out
const logout = () => {
  signOut(getAuth())
    .then(() => {
      console.log("User signed out successfully!");
      router.push("/");
    })
    .catch((error) => {
      console.error("Error signing out:", error);
    });
  window.location.reload();
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
body {
  background: rgb(247, 247, 247);
}

.containerone {
  display: flex;
  justify-content: center; /* Center the content horizontally */
  align-items: center; /* Center the content vertically */
}

.navbar {
  /* Adjust margin-top to center the navbar vertically */
  margin-top: auto;
}

.brand {
  height: 150px; /* Adjust the height as needed */
  max-width: 100%; /* Ensure the image doesn't exceed the container width */
}

.navbar-toggler {
  border: none;
}

.navbar-nav {
  margin-left: auto;
}
.nav-link {
  font-weight: bold;
  transition: color 0.3s;
}
.nav-link-logout {
  color: #333;
  transition: color 0.3s;
  font-weight: 300;
}
.nav-link:hover {
  color: #93a04a;
}
.auth-button {
  padding: 8px 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  background-color: #3498db;
  color: #fff;
  font-size: 14px;
  margin-left: 8px;
  margin-bottom: 10px;
}
.auth-button:hover {
  background-color: #2980b9;
}
.welcome-message {
  color: #333;
  font-weight: bold;
}
.welcome-message:hover {
  color: #333;
}
.cat {
  height: 90px;
  max-width: 200px;
  margin-right: 30px;
}
</style>



<!-- <template>
  <div>
    <img class="brand" src="../assets/olivetree.png" alt="Image 1" />
  </div>
</template>
<style>
.brand {
  height: 150px; /* Adjust the height as needed */
  max-width: 150%;
  margin-top: 20px;
  margin-right: 20px;
  margin-left: 50px;
}
</style> -->