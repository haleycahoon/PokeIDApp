<!------------------------------------------------------------------------------------------------>
<template>
  <Header />
  <div>
    <div id="app">
      <div class="container">
        <div class="row">
          <div class="col-xs-12 col-md-6 offset-md-3">
            <div id="register-form">
              <br />
              <h1>Create an Account</h1>
              <!-- input for user email -->
              <div class="email-field">
                <input
                  type="text"
                  placeholder="Email"
                  v-model="email"
                  class="form-control"
                />
              </div>
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
              <!-- input for verifying password -->
              <div class="password-field">
                <input
                  :type="showPasswordTwo ? 'text' : 'password'"
                  placeholder="Verify Password"
                  v-model="verifyPassword"
                  class="form-control"
                />
                <!-- eye icon used for password vivibility toggling -->
                <i
                  class="eye-icon fas"
                  :class="showPasswordTwo ? 'fa-eye-slash' : 'fa-eye'"
                  @click="togglePasswordVisibilityTwo"
                ></i>
              </div>
              <!-- input for user username -->
              <div class="email-field">
                <input
                  type="text"
                  placeholder="Username"
                  v-model="username"
                  class="form-control"
                />
              </div>
              <br />
              <button @click="register" class="auth-button">Submit</button>
              <p v-if="errorMessage" class="error-message">
                {{ errorMessage }}
              </p>
              <hr />
              <h3>Already a User? Login here</h3>
              <br />
              <router-link to="/SignIn" class="auth-button">Log In</router-link>
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
import { router } from "../router";
import { ref } from "vue";
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import {
  getAuth,
  createUserWithEmailAndPassword,
  updateProfile,
} from "firebase/auth";
const email = ref("");
const password = ref("");
const username = ref("");
const errorMessage = ref("");
const verifyPassword = ref("");
const showPasswordOne = ref(false);
const showPasswordTwo = ref(false);
const register = async () => {
  try {
    const auth = getAuth();
    if (password.value !== verifyPassword.value) {
      errorMessage.value = "Passwords do not match!";
      return;
    }
    const userCredential = await createUserWithEmailAndPassword(
      auth,
      email.value,
      password.value
    );
    const user = userCredential.user;
    console.log("Successfully registered!", user);
    await updateProfile(user, {
      displayName: username.value,
    });
    console.log("Username updated!");
  } catch (error) {
    console.error(error);
    errorMessage.value = error.message;
  }
  window.location.reload();
  router.push("/PageFour");
};
const togglePasswordVisibilityOne = () => {
  showPasswordOne.value = !showPasswordOne.value;
};
const togglePasswordVisibilityTwo = () => {
  showPasswordTwo.value = !showPasswordTwo.value;
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
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
