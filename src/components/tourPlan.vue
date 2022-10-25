<template>
  <!--Navbars start-->
  <sidenav/>
  <div :style="{'margin-left':sidebarWidth}">
  <router-view />
</div>
  <usernav/>
  <!--Nav bars end-->

  <!---content-->
  <div class="container-fluid">
  <tour-plan-nav/>
  <div class="row p-5">
    <h1>Ella Rock Hiking</h1>
  </div>
  
<div class="row tourplan" >


  <div class="col-md">
      <div class="card tourcard  mb-3" style="max-width: 18rem;">
        <div class="card-header">Day 1</div>
        <div class="card-body ">
              <h5 class="card-title">Colombo to Wellawaya</h5>
              <p class="card-text">Departure from : Bandaranayake International Airport</p>
              <p><i class="fa fa-car"></i> Drive</p>
              <p class="card-text">Arrive in: Wellawaya</p>
              <p><i class="fas fa-hotel"></i> Jetwing Kaduruketha</p> 
              <a href="#" class="btn btn-primary newbtn">Edit</a>
        </div>
    </div>
   
    
  </div>
  
</div>

<div class="row">
  <div class="wrapper-mains">
      <div class="left-align">
        <stepper-bar :length="3"></stepper-bar>
      </div>
  </div>
</div>

   
<hr>
</div>
  <!---content ends-->
  <!---Footer-->
  <div>
    <footerbar/>
  </div>
  
  <!---footer ends-->
</template>

<script>


import footerbar from "./footerBar.vue"
import sidenav from "./sideNavbar.vue"
import {sidebarWidth} from "./state"
import { collapsed, toggleSidebar } from './state'
import usernav from "./userNav.vue"
import tourPlanNav from "./tourPlanNav.vue"
import stepperBar from "./stepperBar.vue"

 
export default{
  components:{
   
    footerbar,
    sidenav,
    usernav,
    tourPlanNav,
    stepperBar

  },

  name:"tourPlan",

  setup(){
    return{sidebarWidth},{ collapsed, toggleSidebar }
  },
  
}

</script>
<style scoped>
.navbar{
  margin-left: 50px;
}
.tourplan{
  margin-left: 50px;
}
.tourcard{
  color:#0084BD;
  border-color: #0084BD;
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

.wrapper-mains{
  width: 561px;
    height: auto;
    background: white;
    text-align: center;
    margin: auto;
    padding: 100px 47px 20px 61px;
}
.textarea{
    display: block;
    width: 100%;
    height: 70px;
    border-radius: 5px;
}


</style>