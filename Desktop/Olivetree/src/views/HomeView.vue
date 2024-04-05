<!------------------------------------------------------------------------------------------------>
<template>
  <div>
    <Header />
    <div id="app">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div id="main text">
              <br />
              <section id="home">
                <div class="home__container">
                  <img
                    src="https://lh3.googleusercontent.com/Hmi3QUMdnJ5qjfV8ZyMuh_PxPUyYvKN8t_0eeEN27lrMIx0DLdezwlUiA_-1pwaoH8i68oCGfznwH7yhWsdF_c4ACz3c_JsF0mKL"
                    alt="Sumin"
                    class="homePic"
                  />
                  <h1 class="ml6">
                    <span class="text-wrapper">
                      <span class="letters">
                        <h1 class="home__title">Hello, I'm Haley</h1>
                      </span>
                    </span>
                  </h1>
                  <h2 class="home__description">O_o</h2>
                </div>
              </section>
              <section id="about" class="section sectioncontainer">
                <h1>About me</h1>
                <!-- <h3>major & minor:</h3> -->
                <div class="majors">
                  <div class="major">
                    <h1 class="majorTitle">Major:</h1>
                    <br />
                    <img
                      class="icon1"
                      src="https://cdn.iconscout.com/icon/free/png-256/free-computer-science-1828817-1551380.png"
                      alt="cs"
                    />
                    <h2 class="majorTitle">Computer Science</h2>
                    <div class="majorDescription">
                      Concentration: <br />Web & Cloud Computing
                    </div>
                  </div>
                  <div class="major">
                    <h1 class="majorTitle">Minor:</h1>
                    <br />
                    <img
                      class="icon2"
                      src="https://cdn-icons-png.flaticon.com/512/3159/3159310.png"
                      alt="gd"
                    />
                    <h2 class="majorTitle">Graphic Design</h2>
                    <div class="majorDescription">
                      Concentration: <br />
                      Web Emphasis
                    </div>
                  </div>
                </div>
              </section>
              <!-- skills -->
              <section id="skills" class="section">
                <div class="sectionContainer">
                  <h1 id="skills">Skills</h1>
                  <p></p>
                  <div class="skillset">
                    <div class="skillsetLeft">
                      <div class="skill">
                        <div class="skillDescription">
                          <span>Sleeping</span>
                          <span>85%</span>
                        </div>
                        <div class="skillBar">
                          <div class="skillValue" style="width: 85%"></div>
                        </div>
                      </div>
                      <!-- skill -->
                      <div class="skill">
                        <div class="skillDescription">
                          <span>Minecraft</span>
                          <span>95%</span>
                        </div>
                        <div class="skillBar">
                          <div class="skillValue" style="width: 95%"></div>
                        </div>
                      </div>
                      <!-- skill -->
                      <div class="skill">
                        <div class="skillDescription">
                          <span>digesting lactose</span>
                          <span>0%</span>
                        </div>
                        <div class="skillBar">
                          <div class="skillValue" style="width: 0%"></div>
                        </div>
                      </div>
                      <!-- skill -->
                      <div class="skill">
                        <div class="skillDescription">
                          <span>slime rancher</span>
                          <span>100%</span>
                        </div>
                        <div class="skillBar">
                          <div class="skillValue" style="width: 100%"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </section>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <Footer />
</template>
<!------------------------------------------------------------------------------------------------>
<script>
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
import GroceryList from "../components/GroceryList.vue";
export default {
  name: "Home",
  components: {
    Header,
    Footer,
    GroceryList,
  },
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
h3 {
  color: rgb(0, 0, 0);
}
h1,
h2 {
  color: #000000;
  letter-spacing: 2px;
  margin-top: 25px;
  text-align: center;
}
.homePic {
  width: 400px;
  height: auto; 
}
.homePic:hover {
  transform: rotate(180deg) scale(1);
}
.icon1 {
  height: auto;
  width: 250px;
}
.icon2 {
  height: auto;
  width: 250px;
}
.icon1:hover {
  transform: rotate(30deg) scale(1);
}
.icon2:hover {
  transform: rotate(-30deg) scale(1);
}
.majors {
  display: flex;
  justify-content: space-between;
  margin: 60px 0;
  color: black;
  font-size: x-large;
}
#skills {
  background-color: rgb(102, 102, 102);
  color: white;
}
.skillset {
  display: flex;
  margin: 20px 0;
  font-size: x-large;
}
.skillsetTitle {
  font-size: 30px;
  font-weight: bold;
  color: white;
}
.skillsetLeft {
  flex-basis: 100%;
  padding: 50px 80px;
  color: white;
}
.skillDescription {
  display: flex;
  justify-content: space-between;
}
.skill {
  margin-bottom: 32px;
}
.skillBar {
  width: 100%;
  height: 3px;
  background-color: rgb(190, 190, 190);
}
.skillValue {
  height: 3px;
  background-color: rgb(255, 255, 75);
}
</style>