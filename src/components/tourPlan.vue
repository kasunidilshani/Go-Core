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
  <h1>Ella Rock Hiking</h1>
<div class="row">

    <h1>Day 01</h1>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Colombo to Wellawaya</h5>
        <p class="card-text">Departure from : Bandaranayake International Airport</p>
        <p><i class="fa fa-car"></i> Drive</p>
        <p class="card-text">Arrive in: Wellawaya</p>
        <p><i class="fas fa-hotel"></i> Jetwing Kaduruketha</p> 
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
  </div>
  <div class="row">
    <h1>Day 02</h1>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Wellawaya to Colombo</h5>
        <p class="card-text">Departure from : Wellawaya</p>
        <p><i class="fa fa-car"></i> Drive</p>
        <p class="card-text">Arrive in: Ella Kumbalwela</p>
        <p><i class="fas fa-hiking"></i> Hiking</p> 
        <p class="card-text">Arrive in: Ella Rock Viewpoint</p>
        <p><i class="fa-solid fa-tent"></i> Camping</p> 
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <h1>Day 03</h1>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Colombo to Wellawaya</h5>
        <p class="card-text">Departure from : Bandaranayake International Airport</p>
        <p><i class="fa fa-car"></i> Drive</p>
        <p class="card-text">Arrive in: Wellawaya</p>
        <p><i class="fas fa-hotel"></i> Jetwing Kaduruketha</p> 
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <h1>Day 04</h1>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Wellawaya to Colombo</h5>
        <p class="card-text">Departure from : Wellawaya</p>
        <p><i class="fa fa-car"></i> Drive</p>
        <p class="card-text">Arrive in: Ella Kumbalwela</p>
        <p><i class="fas fa-hiking"></i> Hiking</p> 
        <p class="card-text">Arrive in: Ella Rock Viewpoint</p>
        <p><i class="fa-solid fa-tent"></i> Camping</p> 
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
<hr>
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
  
}

</script>
<style scoped>
.navbar{
  margin-left: 50px;
}

</style>