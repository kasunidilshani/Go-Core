<template>
  <!--Navbars start-->
  <sidenav/>
  <div :style="{'margin-left':sidebarWidth}">
  <router-view />
</div>
  <usernav/>
  <!--Nav bars end-->

  <!---Hotels content-->
  <div class="container-fluid">
  <tour-plan-nav/>
  <div class="row p-5 m-3">
        <input  type="text" v-model="search_location" placeholder="What is your destination?" /> 
      <br />
    
  </div>
  
<!--Replace data with the data retrieved from the database-->
  <div class="row" v-if="hotelList.length">
    <template v-for="(hotels,index) in hotelList" :key ="index" >
      <div class="col-md m-5">
        <div class="card hotelcard  mb-3" >
          <div class="card-header">{{hotels.name}} - {{hotels.location}}</div>
          <div class="card-body">
              <img img class="card-img" src="../assets/nature.jpg" alt="">
              <p><i class="fas fa-hotel"></i> LKR 20 000 </p>
               <p>Per Night Per head </p> 
              <p>Comfortable rooms with mountain view </p> 
              <a href="#" class="btn btn-primary newbtn">See Availability</a>
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
import tourPlanNav from "./tourPlanNav.vue"



 
export default{
  components:{
   
    footerbar,
    sidenav,
    usernav,
    tourPlanNav

  },

  name:"tourPlan",

  setup(){
    return{sidebarWidth},{ collapsed, toggleSidebar }
  },

  data: function(){

    return{
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

  }

  
}

</script>
<style scoped>
.navbar{
  margin-left: 50px;
}
.tourplan{
  margin-left: 50px;
}
.hotelcard{
  background-color:white;
  box-shadow:2px;
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