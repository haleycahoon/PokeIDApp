<!------------------------------------------------------------------------------------------------>
<template>
  <div>
    <Header />
    <div id="app">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <div id="main-text">
              <br />
              <div class="container">
                <h1>Some Cards</h1>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">
                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>
                        Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.
                      </p>
                    </div>
                  </div>
                </div>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">

                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>
                        Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.
                      </p>
                    </div>
                  </div>
                </div>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">

                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>
                        Duis aute irure dolor in reprehenderit in voluptate
                        velit esse.
                      </p>
                    </div>
                  </div>
                </div>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">

                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>
                        Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.
                      </p>
                    </div>
                  </div>
                </div>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">

                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>
                        Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum dolore eu fugiat nulla pariatur.
                      </p>
                    </div>
                  </div>
                </div>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">

                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>
                        Duis aute irure dolor in reprehenderit in voluptate
                        velit esse cillum.
                      </p>
                    </div>
                  </div>
                </div>
                <!-- new card -->
                <div class="card">
                  <div class="card-content">

                    <div class="text-content">
                      <h2>Lorem ipsum</h2>
                      <p>Duis aute irure dolor in reprehenderit.</p>
                    </div>
                  </div>
                </div>
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
<script>
import Header from "../components/Header.vue";
import Footer from "../components/Footer.vue";
export default {
  name: "Home",
  components: {
    Header,
    Footer,
  },
};
</script>
<!------------------------------------------------------------------------------------------------>
<style>
body,
h1,
h2,
h3,
p {
  margin: 10px;
  padding: 10px;
}
body {
  line-height: 1.6;
  background-color: #fff8f8;
  color: #333;
  margin: 0;
  padding: 0;
}
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px;
}
.card {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
  margin-bottom: 70px;
  margin-top: 70px;
  background-color: #ffffff;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgb(129, 129, 129);
  /*card move smooth */
  transition: transform 0.3s ease;
}
.card:hover {
  /*card move */
  transform: translateY(-5px);
}
.card:nth-child(3) .card-content {
  flex-direction: row-reverse;
}
.card:nth-child(5) .card-content {
  flex-direction: row-reverse;
}
.card:nth-child(7) .card-content {
  flex-direction: row-reverse;
}
.card-content {
  display: flex;
  align-items: center;
}
.card-content img {
  height: 300px;
  max-width: 400px;
}
.cardcat:hover {
  transform: scale(1.1);
}
.text-content {
  text-align: left;
}
</style>