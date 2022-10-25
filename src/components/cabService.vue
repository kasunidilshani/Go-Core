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
      <form class ="row " action="">
             <input type="text" v-model="search" placeholder="Where are you going?" /> 
      <input type="text" v-model="search" placeholder="Check In - Check Out" /> 
      <select name="rooms" id="rooms">
        <option value="1">1</option>
      </select>
      </form>
 

      <br />
    
  </div>
  
<div class="row tourplan" >


  <div class="col-md">

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
  width: 350px;
  padding: 10px 45px;
  background-size: 15px 15px;
  font-size: 16px;
  border: none;
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

</style>