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
            <form action="" class="modal-form">
              <div class="p-3">
                <h1>Tour Plan</h1>
                
                  <div class="form-group p-1">
                    <input type="text"  placeholder="Tour Title">
                  </div>

                  <div class="form-group p-1">
                    <input class="form-control-sm" type="file" id="formFile"><br>
                    <small>Add a cover photo for the tour plan</small>
                  </div>

                  <div class="form-group p-1">
                    <input type="text" v-model="startCity" placeholder="Enter Starting City">
                  </div>

                  <div class="form-group p-1">
                      <input type="number" v-model="travellers" placeholder="No Of Travellers">
                  </div>

                  <div class="form-group p-1">
                      <input type="text" v-model="price" placeholder="Price">
                  </div>
                  
                  <div class="form-group p-1">
                    <select class="form-select form-select-md" name="payment" id="payment">
                      <option selected value="Payment Method">Payment Method</option>
                      <option value="Train">Cash Payment</option>
                      <option value="Bus">Card Payment</option>
                    </select>
                  </div>

                  <div class="card formstyle p-3 m-2">
                  <template v-for="(day,index_1) in duration" :key="index_1">
                    <h5 >Day {{index_1+1}}</h5>

                      <div class="form-group p-1 " v-for="(element,index) in day.destination" :key="index">                    
                        <input type="text" placeholder="Enter Destination" v-model="element.name">
                        <div class="form-group p-1">
                        <a href="#" id="add-destination" @click="add(day,destination)" class="controls"><i class="fa-solid fa-plus"></i>Add Destination</a>
                        </div> 
                      </div>
                    
                  <!--control-->
                   
                  
                    <div class="form-group p-1">
                      <select class="form-select form-select-md" name="activities" id="activities" >
                        <option selected value="activities">Activities</option>
                        <option value="Hiking">Hiking</option>
                        <option value="Swimming">Swimming</option>
                        <option value="Surfing">Surfing</option>
                        <option value="Camping">Camping</option>
                      </select>
                    </div>

                    <div class="form-group p-1">
                      <select class="form-select form-select-md" name="lounge" id="lounge" >
                        <option selected value="accommodation">Accommodation</option>
                        <option value="Hiking">Not Provided</option>
                        <option><input type="text"></option>
                      </select>
                    </div>

                    <div class="form-group p-1">
                      <select class="form-select form-select-md" name="transport" id="transport">
                        <option selected value="Transportation Method">Transportation Method</option>
                        <option value="Train">Not Provided</option>
                        <option value="Bus">Taxi</option>
                        <option value="Surfing">Drive</option>
                        <option value="Camping">Train</option>
                        <option value="Camping">Bus</option>
                      </select>
                    </div>
                  </template>
                   <div class="p-2">
                  <a href="#" id="add-day" @click="add_day" class="controls"><button type="button" class="btn-primary newbtn"><i class="fa-solid fa-plus"></i></button></a>
                  <a href="#" id="remove-day" @click="remove(index_1)" class="controls"><button type="button" class="btn-primary newbtn"><i class="fa-solid fa-minus"></i></button></a>
                </div>
                  </div>                  
                

                <!-- Controls to add or remove fields-->
               

                
              </div>
                <!--Dynamic input fields to add more destinations
                
                <div class="p-3" v-for="(k,index) in destination" :key="index">
                  
                  
                  <div class="form-group p-1">
                    <input type="text" placeholder="Enter Next Destination" v-model="k.name">
                    
                  </div>
                  <div class="form-group p-1">
                    <input type="text" placeholder="Transportation Method" v-model="k.transport">
                  </div>
                  <div class="form-group p-1">
                    <input type="text" placeholder="Accomodation" v-model="k.stay">
                  </div>
                </div>-->
                
                <div class="p-4">
                  <a href="./dashboardPage.vue">
                  <button class="newbtn btn btn-primary btn-lg m-2" type="submit" v-on:click="guide_add_plan">Add Plan</button></a>
              
                  <a href="./dashboardPage.vue">
                  <button class="clsbtn btn btn-primary btn-lg m-2" type="reset">Cancel Plan</button></a>
                </div> 
                
            </form>
          </div>
          <!-- Toggle the modal popup -->
        </Modal>
        <div class="d-flex flex-row-reverse ">
           <button type="button" class="btn newbtn btn-primary btn-lg" @click="toggleModal">
            + New Plan 
            </button>  
        </div>
       
  </div>

    <!-- Button to add a new tour plan.This button trigger the modal--> 
    
    </div>
    <!-- existing tour plans. Replace data with the data retrieved fom the database-->
    <div class="row">
        <div class="card-deck p-5">
          <div class="row d-flex flex-fill">
            <div class="row" v-if="planList.length">
              <template v-for="(plan,index) in planList" :key="index">
                <div class="card cardstyle" style="width: 18rem;">
                    <a href="viewPlan.vue"><img class="card-img-top" src="../assets/beach.jpg" alt="Card image cap"></a> <!-- Photo by Oliver Sjöström: https://www.pexels.com/photo/person-standing-on-dirt-surrounded-by-coconut-trees-1005417/ -->
                      <div class="card-body">
                      <p class="card-text">{{plan.destination}} <br> Duration {{plan.duration}}</p> 
                      </div>
                </div>
              </template>
            </div>
            <div v-else>
              <h5>No Plans added yet</h5>
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
data: function(){

return{

duration:[
  {
    activities:'',
    accommodation:'',
    transportation:'',
    destination:[
      {
        name:''
      }
    ]
      
  },
  ],
  




search_location :'',

      plans:[
        {
          image:'url="',
          destination:'Nuwara Eliya',
          duration:'3 Days'
        },
        {
          image:'',
          destination:'Ella',
          duration:'3 Days'
        },
        {
          image:'',
          destination:'Ohiya',
          duration:'4 Days'
        },
        {
          image:'',
          destination:'Bible Rock',
          duration:'2 Days'
        }
      ]
    

   }
},

  computed:{

    planList(){
      
      return this.plans
      
      
    }

  },

methods:{

  async guide_add_plan(){
    await guide_add_plan.insertGuidePlan(
      this.tripTitle,this.Duration,this.Activities,this.startCity,this.Destination,this.transport,this.Accomodation

    )
  },
  add:function(){

    this.day.destination.push(
      {name:''}
    )

    },

  add_day:function(){
  this.duration.push({
    activities:'',
    accommodation:'',
    transportation:'',
    destination:[
      {}
    ]
    })
   },

  remove(index_1){
  this.duration.splice(index_1,1)
  }
}
}


</script>

<!----Styles---->
<style scoped>

.newbtn{
  background-color: #0084BD;
  border-color: #0084BD;
  border-style: solid;
  border-radius: 20px;
  padding-left: 30px;
  padding-right: 30px;
}
.clsbtn{
  background-color: crimson;
  border-color: crimson;
  border-style: solid;
  border-radius: 20px;
  padding-left: 30px;
}

.newbtn:hover{
  background-color:hsl(198, 72%, 46%);
  border-color:hsl(198, 72%, 46%);
}

.cardstyle{
  max-width: 200px;
  max-height:50vh;
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

    .modal-form{
    border: 1.5px;
    border-radius: 5px;
    border-color: gray;
    border-style: solid;
    width: 30vw;
    max-height: 1000vh;
    align-items: center;
  

}
.modal-form input{
  border-width: 0.5px;
  border-color: gray;
  border-style: solid;
  border-radius: 10px;
  word-spacing: 0px;
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 10px;
  padding-bottom: 10px;
  width: 350px;
  appearance: none;

}

.model-form select{
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
  appearance: none;
  
}



.controls{
  color: black;
  padding: 5px;
  
}

.formstyle{
  background-color:#D5EFFA;
  border-radius: 15px;
}

</style>

