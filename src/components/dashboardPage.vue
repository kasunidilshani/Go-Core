<template>
 <!--- Navigation Bars-->
<usernav />
<sidenav />
<div :style="{'margin-left':sidebarWidth}">
  <router-view />
</div>
<br><br>
<!-- nav ends -->
<!--- content------>
<div class="container">
    <div class="row">
      <div class="flex-row-reverse">
        <Modal @close="toggleModal" :modalActive="modalActive">
          <div class="modal-content">
            <form action="" class="login-form">
              <div class="p-3">
                <h1>Tour Plan</h1>
                <div class="form-group p-1">
                  <input type="text" v-model="tripTitle" placeholder="Tour Title">
                </div>
                <div class="form-group p-1">
                    <input type="text" v-model="Duration" placeholder="Tour Duration">
                </div>
                <div class="form-group p-1">
                    <input type="text" v-model="Activities" placeholder="Activities">
                </div>
                <!--<div class="form-group p-1">
                    <input class="form-control-sm" type="file" id="formFile"><br>
                    <small>Add a cover photo for the tour plan</small>
                </div>-->
                <div class="form-group p-1">
                   <input type="text" v-model="startCity" placeholder="Enter Starting City">
                </div>
                <div class="form-group p-1">
                   <input type="text" placeholder="Enter Next Destination" v-model="Destination">
                </div>
                <div class="form-group p-1">
                   <input type="text" placeholder="Transportation Method" v-model="transport">
                </div>
                <div class="form-group p-1">
                   <input type="text" placeholder="Accomodation" v-model="guide_add_plan.Accomodation">
                </div>
              </div>
              <!--Dynamic input fields to add more destinations-->
              
              <!-- <div class="p-3" v-for="(k,index) in destination" :key="index">
                
                
                <div class="form-group p-1">
                   <input type="text" placeholder="Enter Next Destination" v-model="k.name">
                  
                </div>
                <div class="form-group p-1">
                   <input type="text" placeholder="Transportation Method" v-model="k.transport">
                </div>
                <div class="form-group p-1">
                   <input type="text" placeholder="Accomodation" v-model="k.stay">
                </div>
              </div> -->
              <!-- Controls to add or remove fields-->
              <!-- <div class="p-2">
                <a href="#" id="add-destination" @click="add" class="controls"><i class="fa-solid fa-plus"></i>Add Destination</a>
                <a href="#" id="remove-destination" @click="remove(index)" class="controls"><i class="fa-solid fa-minus"></i>Remove Destination</a>
              </div>-->
              <div class="p-4">
                 <a href="./dashboardPage.vue">
                 <button class="newbtn btn btn-primary btn-lg" type="submit" v-on:click="guide_add_plan">Add Plan</button></a>
              </div> 
              
            </form>
          </div>
        </Modal>
        <div class="d-flex flex-row-reverse ">
           <button type="button" class="btn newbtn btn-primary btn-lg" @click="toggleModal">
            + New Plan 
            </button>  
        </div>
       
  </div>

    <!-- Button to add a new tour plan.This button trigger the modal--> 
    
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

                <div class="card cardstyle" style="width: 18rem;" to="./viewPlan">
                    <a href="./viewPlan.vue"><img class="card-img" src="../assets/nature.jpg" alt="Card image cap"></a><!-- Photo by Elvi Madushanka: https://www.pexels.com/photo/view-of-the-galboda-waterfall-in-sri-lanka-12496768/ -->
                    <div class="card-body">
                    <p class="card-text">Ella Rock <br> Duration 4 days</p> 
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
import Modal from "@/components/modalPopup.vue";
import { ref } from "vue";
import sidenav from "./sideNavbar.vue";
import {sidebarWidth} from "./state";
import { collapsed, toggleSidebar } from './state';
import usernav from "./userNav.vue";
import guide_add_plan from '../guide_add_plan.js';
 
export default{

  name:"dashboardPage",
  components:{
   
    footerbar,
    Modal,
    sidenav,
    usernav
  },

  setup(){
    const modalActive = ref(false);

    const toggleModal = () => {
      modalActive.value = !modalActive.value;
    };

    return{sidebarWidth},{ collapsed, toggleSidebar },{ modalActive, toggleModal }
  },

  //define data
// data: function(){

//   return{

    
//     destination:[
//       {
//         name:'',
//         transport:'',
//         stay:''
//       }
//     ]
//   }
// },
methods:{

  async guide_add_plan(){
    await guide_add_plan.insertGuidePlan(
      this.tripTitle,this.Duration,this.Activities,this.startCity,this.Destination,this.transport,this.Accomodation

    )
  },
  // add:function(){
  //   this.destination.push({
  //     name:'',
  //     transport:'',
  //     stay:''
  //   })
  // },
  // remove(index){
  //   this.destination.splice(index,1)
  // }
}
}


</script>
<style scoped>

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

.cardstyle{
  max-width: 200px;
  max-height:40vh;
  margin-left: 50px;
  margin-right: 50px;

  }

  .modal-content {
    display: flex;
    flex-direction: row;
    justify-content: center;
    border: none;
    }

    .modal-content h1,p {
      margin-bottom: 16px;
    }

     .modal-content h1 {
      font-size: 32px;
    }

     .modal-content p {
      font-size: 18px;
    }

    .login-form{
    border: 1.5px;
    border-radius: 5px;
    border-color: gray;
    border-style: solid;
    width: 30vw;
    max-height: 1000vh;
    align-items: center;
  

}
.login-form input{
  border-width: 1.5px;
  border-color: gray;
  border-style: solid;
  border-radius: 10px;
  word-spacing: 5px;
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 10px;
  padding-bottom: 10px;
  width: 350px;
}

.controls{
  color: black;
  padding: 5px;
  
}


</style>
