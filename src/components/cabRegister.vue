<template>
    <!------Navigation Bar------->
    <navbar />
 <!------Navigation Bar ends------->

<!------Content------->
    <div id="content">
        <div class="row">
            <div class="row p-5"> <h2>Register your vehicle</h2></div>
            <div class="col-sm">
                <img src="../assets/WithSlogan.png" alt="GoCore Logo">
            </div>
          <div class="col-sm">
            <section class="">
              <transition name="slide-fade">
                <section v-show="step === 1">
                  <form class="form  p-4" method="post" action="#" @submit.prevent="next">

                    <div class="form group">
                      <h2 class="">Details of the Owner</h2>
                      <label for="ownerName">Name</label><br>
                      <input class="inputstyle " type="text" v-model="owner.Name"  placeholder="First name" required /><br><br>
                      <label for="ownerTel">Contact Number</label><br>				
                      <input class="inputstyle" type="tel" v-model="owner.phoneNumber"  placeholder="Phone number" minlength="9" maxlength="10"  required /><br><br>
                      <label for="ownerAddress">Address</label><br>					
                      <input class="inputstyle" type="tel" v-model="owner.address"  placeholder="Address" required /><br><br>
                      <label for="ownerCity">City</label><br>				
                      <input class="inputstyle" type="text" v-model="owner.city"  placeholder="City" required /><br><br>
                      <label for="ownerMail">Email</label><br>					
                      <input class="inputstyle" type="email" v-model="owner.eMail"  placeholder="Email" required /><br><br>
                      <label for="ownerNIC">NIC Number</label><br>					
                      <input class="inputstyle" type="text" v-model="owner.nic"  placeholder="NIC" minlength="12" maxlength="12" required /><br><br>
                    </div>
                    <div>
                      <button class="btn btn-primary newbtn" type="submit" value="Next">Next</button>
                    </div>
                  </form>
                </section>
              </transition>
              <transition name="slide-fade">
                <section v-show="step === 2">

                  <div class="form-group">
                  <h2 class="">Details of the Vehicle</h2>
                  <form class="form p-4" method="post" action="#" @submit.prevent="next">
                    
                      <label for="Vtype">Vehicle Type</label><br>
                      <input class="inputstyle" type="text" v-model="vehicle.type"  placeholder="Vehicle Type" required /><br><br>
                      <label for="Vregno">Registration Number</label><br>
                      <input class="inputstyle" type="text" v-model="vehicle.regno"  placeholder="Registered Number" required /><br><br>
                      <label for="Vregyr">Registered Year</label><br>
                      <input class="inputstyle" type="text" v-model="vehicle.regYear"  placeholder="Registered Year" required /><br><br>
                      <label for="Vchassis">Chassis Number</label><br>
                      <input class="inputstyle" type="text" v-model="vehicle.chassis"  placeholder="Chassis No" required /><br><br>
                      <label for="Vinsurance">Insurance Type</label><br>
                      <input class="inputstyle" type="text" v-model="vehicle.insuarance"  placeholder="Insurance Type" required /><br><br>
                      <label for="Vdocs">Upload documents for verification</label><br>
                      <input class="inputstyle" type="file" placeholder="Upload Document" required /><br><br>
                      <div class="fom-group">
                        <button type="" class="btn btn-lg newbtn btn-primary" @click.prevent="prev()">Previous</button>
                        <button type="submit" class="btn btn-lg newbtn btn-primary">Next</button>
                      </div>
                  </form>
                  </div>
                </section>
              </transition>
              <transition name="slide-fade">
                <section v-show="step === 3">
                  <h2 class="">Details of the Driver</h2>
                  <form class="form" action="#" @submit.prevent="customerRegister">
                    
                      <label for="driverName">Name</label><br>
                      <input class="inputstyle" type="text" v-model="driver.Name"  placeholder="Name" required /><br><br>
                      <label for="driverBdy">Birthday</label><br>
                      <input class="inputstyle" type="date" v-model="driver.birthdate" placeholder="Birthday ('day'/'month'/'year')" required /><br><br>				
                      <label for="driverTel">Contact Number</label><br>
                      <input class="inputstyle" type="tel" v-model="driver.phoneNumber"  placeholder="Contact Number" required /><br><br>
                      <label for="driverAddress">Address</label><br>			
                      <input class="inputstyle" type="text" v-model="driver.address" placeholder="Address" required /><br><br>
                      <label for="driverMail">Email</label><br>
                      <input class="inputstyle" type="email" v-model="driver.eMail"  placeholder="Email" required /><br><br>
                      <label for="driverNIC">NIC Number</label><br>
                      <input class="inputstyle" type="text" v-model="driver.nic" placeholder="NIC" required /><br><br>
                      <label for="driverLicense">License Number</label><br>
                      <input class="inputstyle" type="texr" v-model="driver.license" placeholder="License Number" required /><br><br>
                      <label for="driverDocs">Upload documents for verification</label><br>
                      <input class="inputstyle" type="file"  placeholder="Upload the document" required /><br><br>
                      <div>
                        <p><input type="checkbox">I have agreed to the terms and privacy policy</p>
                      </div>

                      <div class="fom-group">
                        <button type="" class="btn btn-lg newbtn btn-primary" @click.prevent="prev()">Previous</button>
                        <button type="submit" class="btn btn-lg newbtn btn-primary">Sign Up</button>
                      </div>
                  </form>
                </section>
              </transition>
            </section>
          </div>  
        </div>    
        <hr>
        
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
  },
    data: () => {
    return {
      steps: {},
      step: 1,
      owner: {
        Name: "",
        phoneNumber: "",
        address: "",
        city: "",
        eMail: "",
		nic: ""
      },vehicle: {type: "",
        regno: "",
        regYear: "",
        chassis: "",
        insuarance: "",
        document: "",
      },driver: {Name: "",phoneNumber: "",address: "",eMail: "",nic: "",birthdate: "",license: "",document:""
      },
    };
  },
  methods: {
    prev() {
      this.step--;
    },

    next() {
      this.step++;
    },

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
  width: 400px;
}

.newbtn{
  background-color: #0084BD;
  border-color: #0084BD;
  border-style: solid;
  border-radius: 20px;
  padding-left: 30px;
  padding-right: 30px;
  margin-right: 10px;
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

.animation-in {
   transform-origin: left;
   animation: in .6s ease-in-out;
}
.animation-out {
   transform-origin: bottom left;
   animation: out .6s ease-in-out;
}

form{
  background-color: #0084bd74;
  border-radius: 35px;
}

</style>
