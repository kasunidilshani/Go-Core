<template>
    <!------Navigation Bar------->
<navbar />
 <!------Navigation Bar ends------->

<!------Content------->
<div id="content" >
  <div class="row">
      <div><h3>Register to the system</h3></div>
      
        <div class="card-deck p-5">
            <div class="d-flex flex-fill">

                <div class="card cardstyle shadow-sm" style="width: 18rem;">
                    <img class="card-img-top" src="../assets/Tourguide.png" alt="Card image cap"> <!-- https://www.freepik.com/free-vector/taxi-app-concept-illustration_7607041.htm#query=cab%20service&position=9&from_view=search -->
                    <div class="card-title">
                      Tour Guide
                    </div>
                    <div class="card-body">
                      <a href="../guideRegister.vue"><button class="newbtn btn btn-m btn-primary">Sign Up</button></a>
                    </div>
                </div>

                <div class="card cardstyle shadow-sm" style="width: 18rem;" to="./viewPlan">
                    <a href="./viewPlan.vue"><img class="card-img" src="../assets/taxi.png" alt="Card image cap"></a><!-- https://storyset.com/web -->
                    <div class="card-title">
                      Cab Services
                    </div>
                    <div class="card-body">
                      <a href="../cabRegister.vue"><button class="newbtn btn btn-m btn-primary">Sign Up</button></a>
                    </div>
                </div>

                <div class="card cardstyle shadow-sm" style="width: 18rem;">
                    <img class="card-img" src="../assets/HotelBooking.png" alt="Card image cap"> <!-- https://storyset.com/app -->
                    <div class="card-title">
                      Hotels
                    </div>
                    <div class="card-body">
                      <a href="../hotelRegister.vue"><button class="newbtn btn btn-m btn-primary">Sign Up</button></a>
                    </div>
                </div>
            </div>

        </div>
       
    
   <hr>
   </div>
</div>
<!------Content ends------->

<!------Footer------->
<footerbar />

<!------Footer ends------->
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

<style scoped>
#content{
  align-items: center;
  justify-content: center;
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  padding-left: 100px;
  padding-right: 100px;
  padding-top: 25px;
  padding-bottom: 25px;
}

.inputstyle{
  border-width: 2px;
  border-color: gray;
  border-style: solid;
  border-radius: 10px;
  word-spacing: 5px;
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 10px;
  padding-bottom: 10px;
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
  

#heading2{
 
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: #085B7F;
}

.cardstyle{
  margin-left: 50px;
  margin-right: 50px;

  }
</style>
