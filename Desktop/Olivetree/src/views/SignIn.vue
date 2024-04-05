<!------------------------------------------------------------------------------------------------>
<template>
  <Header />
  <div>
    <div id="app">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-md-6 offset-md-3">
            <div id="login-form">
              <br />
              <!-- welcome message for logged-in users -->
              <h3 v-if="userLoggedIn" class="welcome-back">
                Welcome back, {{ userName }}!
              </h3>
              <div v-if="!userLoggedIn" @submit.prevent="login">
                <h1>Login</h1>
                <div>
                  <input
                    type="text"
                    placeholder="Email"
                    v-model="email"
                    class="form-control"
                  />
                </div>
                <!----------------------------------------->
                <!-- input for user password -->
                <div class="password-field">
                  <input
                    :type="showPasswordOne ? 'text' : 'password'"
                    placeholder="Password"
                    v-model="password"
                    class="form-control"
                  />
                  <!-- eye icon used for password vivibility toggling -->
                  <i
                    class="eye-icon fas"
                    :class="showPasswordOne ? 'fa-eye-slash' : 'fa-eye'"
                    @click="togglePasswordVisibilityOne"
                  ></i>
                </div>
                <br />
                <!----------------------------------------->
                <!-- button used for submiting the form -->
                <button type="button" @click="login" class="auth-button">
                  Login
                </button>
                <!-- error message if the users info is wrong -->
                <p v-if="errorMessage" class="error-message">
                  There was an issue with your username or password. Please try
                  again.
                </p>
                <hr />
                <!-- section for non-registerd users -->
                <h3>New User? Register here</h3>
                <br />
                <!-- button to navigate to the register page -->
                <router-link to="/Register" class="auth-button"
                  >Register</router-link
                >
              </div>
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
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import { ref } from "vue";
import {
  getAuth,
  signInWithEmailAndPassword,
  onAuthStateChanged,
} from "firebase/auth";

const email = ref("");
const password = ref("");
const errorMessage = ref("");
const userLoggedIn = ref(false);
const userName = ref("");
const showPasswordOne = ref(false);
onAuthStateChanged(getAuth(), (user) => {
  if (user) {
    userLoggedIn.value = true;
    userName.value = user.displayName || "User";
  } else {
    userLoggedIn.value = false;
    userName.value = "";
  }
});
const login = () => {
  signInWithEmailAndPassword(getAuth(), email.value, password.value)
    .then((userCredential) => {
      console.log("Successfully logged in!");
      router.push("/");
    })
    .catch((error) => {
      console.error(error);
      // Handle login errors
      errorMessage.value = error.message;
      password.value = "";
    });
};
const togglePasswordVisibilityOne = () => {
  showPasswordOne.value = !showPasswordOne.value;
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
@import url('https://fonts.cdnfonts.com/css/noto-sans-devanagari');
#login-form {
  margin-top: 50px;
}
.form-control {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  margin-bottom: 15px;
  font-family: 'Noto Sans Devanagari', sans-serif;
  
}
.auth-button {
  padding: 8px 15px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  background-color: #3498db;
  color: #fff;
  font-size: 16px;
}
.auth-button:hover {
  background-color: #2980b9;
}
.error-message {
  color: red;
  margin-top: 10px;
}
.welcome-back {
  text-align: center;
  margin-top: 20px;
}
.error-message {
  color: red;
  margin-top: 10px;
  font-size: 14px;
  font-style: italic;
}
.eye-icon {
  cursor: pointer;
  color: #777;
  transition: color 0.3s ease;
}
.eye-icon:hover {
  color: #333;
}
.password-field input {
  flex: 1;
  margin-right: 5px;
  font-family: 'Noto Sans Devanagari', sans-serif;                                         
}
.password-field {
  position: relative;
}
.eye-icon {
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  cursor: pointer;
}
h1,
h3 {
  color: #332d2d;
}
</style>
