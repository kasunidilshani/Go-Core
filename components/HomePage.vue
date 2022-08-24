<template>

<!--- Navigation Bar-->
<navbar />

<!--Content---->
<div id="content" class="maincontent" >
<div class="row">

    <div class="col-sm  p-5">
      <div class="d-flex">
        <p id="text1"> Plan your dream tour</p>
      </div>
      <p id="heading1"> Chase the Adventure </p>
      <div class="p-5">
        <a href="./LogIn.vue" style="color:white"><button type="button" class="btn newbtn btn-primary btn-lg">Log In</button></a>
      </div>
  
  </div>

  <div class="card-deck col-sm  p-5">
  
  <div class="row p-5"> </div>
    <div class="d-flex flex-fill">

      <div class="card cardstyle col-sm">
        <img class="card-img" src="../assets/beach.jpg" alt="Card image cap"> <!-- Photo by Oliver Sjöström: https://www.pexels.com/photo/person-standing-on-dirt-surrounded-by-coconut-trees-1005417/ -->
        <div class="card-img-overlay">
          <h5 class="card-title"  style="color:white">BEACH</h5>
        </div>
      </div>

      <div class="card cardstyle col-sm">
        <img class="card-img" src="../assets/nature.jpg" alt="Card image cap"> <!-- Photo by Elvi Madushanka: https://www.pexels.com/photo/view-of-the-galboda-waterfall-in-sri-lanka-12496768/ -->
        <div class="card-img-overlay">
          <h5 class="card-title" style="color:white">NATURE</h5>
        </div>
      </div>

      <div class="card cardstyle col-sm">
        <img class="card-img" src="../assets/camping.jpg" alt="Card image cap"> <!-- Photo by João Sampaio: https://www.pexels.com/photo/camping-under-stars-11742049/ -->
        <div class="card-img-overlay">
          <h5 class="card-title" style="color:white">ACTIVITIES</h5>
        </div>
      </div>     

    </div>

</div>
 
</div>
<hr>
</div>

<!----------------------------------------Footer-------------------------------------->
<footerbar />


</template>

<script>
import navbar from "./topNavbar.vue"
import footerbar from "./footerBar.vue"
 
export default{
  components:{
    navbar,
    footerbar
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.maincontent {
    
    background: url('../assets/hikkaduwa-coast.png') no-repeat;
    position: relative; 
    display: flex;
    align-items: center;
    justify-content: center;
   
    height: 85vh;
    
    -webkit-background-size: cover;
    -moz-background-size:cover;
    -o-background-size:cover;
    background-size: cover;
     

    

};

.maincontent::before {
   
    content: "";
    position: absolute;
    top: 0px;
    right: 0px;
    bottom: 0px;
    left: 0px;
    opacity: 0.5;
}

#heading1{
  position: relative;
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  font-size: 5em;
  color: #085B7F;
}
#text1{
  position: relative;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: black;
 font-size: 1.5em;
}

.cardstyle{
  max-width: 180px;
  max-height: 250px;
  margin-left: 4px;
  margin-right: 4px;

}

.newbtn{
  background-color: #0084BD;
  border-color: #0084BD;
  border-style: solid;
  border-radius: 20px;
  padding-left: 30px;
  padding-right: 30px;
}

.newbtn:hover{
  background-color:hsl(198, 72%, 46%);
  border-color:hsl(198, 72%, 46%);
}

</style>
