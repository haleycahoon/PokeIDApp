<!------------------------------------------------------------------------------------------------>
<template>
  <div id="app">
    <div class="container">
      <footer class="footer">
        <div class="qa-link footerlinks">
          <router-link to="/QuestionsAndAnswers">Help/FAQs</router-link>
        </div>
        <div class="qa-link footerlinks">
          <router-link to="/Careers">Careers</router-link>
        </div>
        <h6>OLIVETREE©2024</h6>
        <div class="social-icons">
          <a href="https://www.discord.com/" target="_blank"
            ><i class="bi bi-discord"></i>
          </a>
          <a href="https://www.facebook.com/" target="_blank"
            ><i class="bi bi-facebook"></i
          ></a>
          <a href="https://x.com/" target="_blank"
            ><i class="bi bi-twitter-x"></i
          ></a>
          <a href="https://www.instagram.com/" target="_blank"
            ><i class="bi bi-instagram"></i
          ></a>
          <a href="https://www.youtube.com/" target="_blank"
            ><i class="bi bi-youtube"></i
          ></a>
        </div>
      </footer>
    </div>
  </div>
</template>
<!------------------------------------------------------------------------------------------------>
<script>
export default {
  name: "Footer",
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
.footer {
  background-color: #d5d5d5;
  color: rgb(0, 0, 0);
  padding: 10px;
  text-align: center;
  margin-top: 100px;
  letter-spacing: 8px;
}
.social-icons a {
  color: rgb(77, 159, 192);
  margin: 15px;
  transition: color 0.3s ease;
  font-size: 25px;
}
.social-icons a:hover {
  color: rgb(33, 72, 96);
}
h6 {
  color: rgb(0, 0, 0);
}
.qa-link a {
  color: #333;
  margin: 15px;
  text-decoration: none;
  font-weight: bold;
  font-size: 16px;
  transition: color 0.3s ease;
}

.qa-link a:hover {
  color: #93a04a;
}

.footerlinks {
  font-family: "Courier New", Courier, monospace;
  text-align: left;
  letter-spacing: 0px;
}
</style>
