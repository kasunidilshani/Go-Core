<template>
 <!--- Navigation Bar-->
<nav class=" navbar navbar-expand-md ">

    <div class="collapse navbar-collapse px-4" id="navbarSupportedContent">
      <a class="navbar-brand mainlogo" href="#">
        <img src="../assets/WithSlogan.png" width="60px" height="60px" alt="">
        </a>
    </div>
 

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
   
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link active" href="./HomePage.vue">Home</a>
      </li>
       </ul>
    </div>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
   
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">About Us</a>
      </li>
       </ul>
    </div>

       <div class="collapse navbar-collapse" id="navbarSupportedContent">
   
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Explore</a>
      </li>
       </ul>
    </div>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
   
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
       </ul>
    </div>

     <div class="collapse navbar-collapse" id="navbarSupportedContent">
   
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><img src="../assets/profile.jpg" class="profile" alt=""></a> <!--Photo by Andrea Piacquadio: https://www.pexels.com/photo/man-standing-near-building-white-black-turtleneck-shirt-874158/-->
      </li>
       </ul>
    </div>
    
</nav>
<br>

<sidenav />
<div :style="{'margin-left':sidebarWidth}">
  <router-view />
</div>
<!-- nav ends -->
<!--- content------>
<div class="container">
    <div class="row d-flex justify-content-end">
        <button class="newplanbtn" type="button" data-toggle="modal" href="#addNewPlan" @click="showmodal">
          + New Plan
        </button>
         <!-- Button to add a new tour plan.This button trigger the modal-->
         <Modal v-show="isModalVisible" @close="closeModal"/>
    </div>
    <!-- existing tour plans-->
    <div class="row">
        <div class="card-deck p-5">
            <div class="d-flex flex-fill">

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img-top" src="../assets/beach.jpg" alt="Card image cap"> <!-- Photo by Oliver Sjöström: https://www.pexels.com/photo/person-standing-on-dirt-surrounded-by-coconut-trees-1005417/ -->
                    <div class="card-body">
                    <p class="card-text">Galle <br> Duration 3 days</p> 
                    </div>
                </div>

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img" src="../assets/nature.jpg" alt="Card image cap"> <!-- Photo by Elvi Madushanka: https://www.pexels.com/photo/view-of-the-galboda-waterfall-in-sri-lanka-12496768/ -->
                    <div class="card-body">
                    <p class="card-text">Ella Rock <br> Duration 3 days</p> 
                    </div>
                </div>

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img" src="../assets/camping.jpg" alt="Card image cap"> <!-- Photo by João Sampaio: https://www.pexels.com/photo/camping-under-stars-11742049/ -->
                    <div class="card-body">
                    <p class="card-text">Bible Rock <br> Duration 3 days</p> 
                    </div>
                </div>

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img-top" src="../assets/beach.jpg" alt="Card image cap"> <!-- Photo by Oliver Sjöström: https://www.pexels.com/photo/person-standing-on-dirt-surrounded-by-coconut-trees-1005417/ -->
                    <div class="card-body">
                    <p class="card-text">Trimcomalee<br> Duration 3 days</p> 
                    </div>
                </div>

            </div>

        </div>
        
    </div>

    <!-- existing tour plans ends-->

    <div class="row">
        <div class="card-deck p-5">
            <div class="d-flex flex-fill">

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img-top" src="../assets/beach.jpg" alt="Card image cap"> <!-- Photo by Oliver Sjöström: https://www.pexels.com/photo/person-standing-on-dirt-surrounded-by-coconut-trees-1005417/ -->
                    <div class="card-body">
                    <p class="card-text">Galle <br> Duration 3 days</p> 
                    </div>
                </div>

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img" src="../assets/nature.jpg" alt="Card image cap"> <!-- Photo by Elvi Madushanka: https://www.pexels.com/photo/view-of-the-galboda-waterfall-in-sri-lanka-12496768/ -->
                    <div class="card-body">
                    <p class="card-text">Ella Rock <br> Duration 3 days</p> 
                    </div>
                </div>

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img" src="../assets/camping.jpg" alt="Card image cap"> <!-- Photo by João Sampaio: https://www.pexels.com/photo/camping-under-stars-11742049/ -->
                    <div class="card-body">
                    <p class="card-text">Bible Rock <br> Duration 3 days</p> 
                    </div>
                </div>

                <div class="card cardstyle" style="width: 18rem;">
                    <img class="card-img-top" src="../assets/beach.jpg" alt="Card image cap"> <!-- Photo by Oliver Sjöström: https://www.pexels.com/photo/person-standing-on-dirt-surrounded-by-coconut-trees-1005417/ -->
                    <div class="card-body">
                    <p class="card-text">Trimcomalee<br> Duration 3 days</p> 
                    </div>
                </div>

            </div>

        </div>
        
    </div>

    <div class="row"> 
        <div></div>
    </div>
    <br>
</div>
<!----content ends----->
<hr>
<!-- footer -->
<footerbar />
<!-- footer ends-->
</template>
<script>


import footerbar from "./footerBar.vue"
import Modal from "./modalPopup.vue"
import sidenav from "./sideNavbar.vue"
import {sidebarWidth} from "./state"
import { collapsed, toggleSidebar } from './state'
 
export default{
  components:{
   
    footerbar,
    Modal,
    sidenav
  },

  setup(){
    return{sidebarWidth},{ collapsed, toggleSidebar }
  },
  data() {
      return {
        isModalVisible: false,
      };
    },
    methods: {
      showModal() {
        this.isModalVisible = true;
      },
      closeModal() {
        this.isModalVisible = false;
      }
    }
}

</script>
<style scoped>
.profile{
    width: 60px;
    height: 60px;
    border-radius: 45px;
}
.newplanbtn{
    width: 140px;
    height: 50px;
    border-radius: 30px;
    border-style: solid;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-left: 20px;
    padding-right: 20px;
    background-color: white;
    
}
.newplanbtn:hover{
    background-color:#B3DAEB ;
}

.cardstyle{
  max-width: 200px;
  max-height:40vh;
  margin-left: 50px;
  margin-right: 50px;

  }


</style>
