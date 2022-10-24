<template>
  <!--Navbars start-->
  <sidenav/>
  <div :style="{'margin-left':sidebarWidth}">
  <router-view />
  </div>
  <usernav/>
  <!--Nav bars end-->

  <!---content-->
<div>
  <!--Carousel slides -->
  <div class="card bg-dark text-white">
   <img class="imgslide" src="../assets/pexels-sahir-sujahudeen-10727551.jpg" alt="">
  <div class="card-img-overlay">
    <h5 class="card-title">Ella Rock Hiking</h5>
    <p class="card-text">Duration 4 Days</p>
  </div>
</div>
 
  <!---tour navbar
 <tour-plan-nav />--->
 <br>
 <div class="row" >
    <div class="row p-5">
      <hr>
      <h1>Ella Rock Hiking</h1>
      <hr>
    </div>
  <div class="col-md-6">
         <div class="card tourcard tourplan shadow-sm">
        <div class="card-body row">
              <p><i class="fa-regular fa-calendar"></i> Duration</p> <br>
              <p><i class="fa-solid fa-map-location"></i> Starting City</p><br>
              <p><i class="fa-solid fa-map-location-dot"></i>Final Destination</p><br>
              <p><i class="fas fa-hotel"></i>Accommodation</p> 
        </div>
        <dir class="p-3">
          <a href="#" class="btn btn-primary newbtn">Edit</a>
        </dir>
        
    </div>
  </div>
  <div class="col-md-6">
    <img class="mapimg" src="../assets/map.png" alt="">
  </div>
 </div>
  <div class="row m-3">
    <hr><h2>Find a place to stay</h2><hr>
  </div>
    <!---Hotels content-->
  <div class="container-fluid">
  <div class="row p-5 m-3">
        <input  type="text" v-model="search_location" placeholder="What is your destination?" /> 
      <br />
    
  </div>
  
<!--Replace data with the data retrieved from the database-->
  <div class="col-lg tourplan" v-if="hotelList.length">
    <template v-for="(hotels,index) in hotelList" :key ="index" >
      <div class="card-deck m-5">
        <div class="card hotelcard  mb-3" >
          <div class="card-header"><i class="fas fa-hotel"></i> {{hotels.name}} - {{hotels.location}}</div>
          <div class=" row card-body">
              <div class="col-sm">
                <img img class="card-img" src="../assets/nature.jpg" alt="">
              </div>
              <div class="col-sm">
                <h5>Comfortable rooms with mountain view </h5> <br>
                <p> LKR 20 000 Per night per head</p> <br>
                <div class="m-2">
                  <p>Contact Details</p> 
                  <p><i class="fa fa-phone"></i> +94 xx xxx xxxx</p> 
                  <p><i class="fa fa-at"></i> hotelname@gmail.com</p> 
                </div>
                <br>
                <p><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa-solid fa-star-half-stroke"></i><i class="fa-regular fa-star"></i></p> 
                <br>
                <a href="#" class="btn btn-primary newbtn">Check Website</a>
              </div>
              
          </div>
        </div>
      </div>
    </template>
  </div>

  <div v-else class="error">
      No nearby places found
  </div>
<hr>
</div>
  <!---Hotels content ends-->
</div>
  <!---content ends-->
  <!---Footer-->
  <footerbar/>
  <!---footer ends-->
</template>

<script>


import footerbar from "./footerBar.vue"
import sidenav from "./sideNavbar.vue"
import {sidebarWidth} from "./state"
import { collapsed, toggleSidebar } from './state'
import usernav from "./userNav.vue"
//import tourPlanNav from "./tourPlanNav.vue"

 
export default{
  components:{
   
    footerbar,
    sidenav,
    usernav,
    //tourPlanNav,
   
  },

  name:"viewPlan",

  setup(){
    return{sidebarWidth},{ collapsed, toggleSidebar }
  },
  data() {
      return {
        isModalVisible: false,
        
      search_location :'',

      hotels:[
        {
          name:'ABC',
          location:'Nuwara Eliya'
        },
        {
          name:'DEF',
          location:'Matara'
        },
        {
          name:'XYZ',
          location:'Ella'
        },
        {
          name:'JKL',
          location:'Galle'
        }
      ]
    }
    
  },

  computed:{

    hotelList(){
      if(this.search_location.trim().length > 0){
        return this.hotels.filter((hotels) => hotels.location.toLowerCase().includes(this.search_location.trim().toLowerCase()))
      }
      
      return this.hotels
      
      
    }

  },

  
  methods: {
      showModal() {
        this.isModalVisible = true;
      },
      closeModal() {
        this.isModalVisible = false;
      },
    },
  
}

</script>
<style scoped>



.imgslide {
  height:500px;
  width:100%;
  margin-left:40px
}
.mapimg{
  height: 300px;
  width: 75%;
  margin: 10px;
}
.navbar{
  margin-left: 50px;
}

.timeline {
    list-style-type: none;
    margin: 0;
    padding: 0;
    position: relative
}

.tourplan{
  margin-left: 70px;
  margin-right: 70px;
}
.tourcard{
  background-color:white;
  color:black;
  border-color: #0084BD;
  max-width: 500px;
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
.hotelcard{
  background-color:white;
  color:black;
  border-color: #0084BD;
  
}
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
  font-family: "Montserrat", sans-serif;
}

body {
  padding: 20px;
  min-height: 100vh;
  background-color: rgb(234, 242, 255);
}

input {
  display: block;
  padding: 10px 45px;
  background-size: 15px 15px;
  font-size: 16px;
  border-style: solid;
  border-width:2px;
  border-color: #535c6070 ;
  border-radius: 5px;
  box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
    rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
}

.item {
  width: 350px;
  margin: 0 auto 10px auto;
  padding: 10px 20px;
  color: white;
  border-radius: 5px;
  box-shadow: rgba(0, 0, 0, 0.1) 0px 1px 3px 0px,
    rgba(0, 0, 0, 0.06) 0px 1px 2px 0px;
}

.error {
  background-color: tomato;
}

.card-img{
  max-block-size: 350px;
}
</style>