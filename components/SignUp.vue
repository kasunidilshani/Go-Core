<template>
  <!------Navigation Bar------->
  <navbar />
  <!------Navigation Bar ends------->
  <!------Content------->

  <div id="content">
      <!-- <div class="col-sm" style="padding-top:50px">
        <img src="../assets/WithSlogan.png" alt="gocore logo" width="300px" height="300px">
      </div> -->

      <div class="signupContent">
        <div>
          <h3>Sign Up</h3>
        </div>
        <form action="" class=" row p-4">
          <div class="col-sm">
            <label for="name">First Name</label><br>
            <input type="text" class="inputstyle" v-model="fName" required placeholder="Enter your first name">

            <br><br>
            <label for="text">NIC</label><br>
            <input type="text" v-model="NIC" placeholder="xxxxxxxxxV" class="inputstyle"><br><br>
            <label for="name">Contact Details</label><br>
            <input type="number" v-model="phnNo" placeholder="+94xxxxxxxxx" class="inputstyle"><br><br>
            <label for="password">Password</label><br>
            <input type="password" v-model="password" required placeholder="Password" class="inputstyle"
              id="id_password"><br><br>
          </div>
              <div class="col-sm">
            <label for="name">Last Name</label><br>
            <input type="text" v-model="lName" required placeholder="Enter your last name" class="inputstyle">
            <br><br>
            <label for="name">Email</label><br>
            <input type="email" v-model="email" placeholder="example@gmail.com" class="inputstyle"><br><br>
            <label for="text">Address</label><br>
            <input type="text" v-model="Address" placeholder="Your Address" class="inputstyle"><br><br>
            <label for="password">Confirm Password</label><br>
            <input type="password" v-model="confPass" required placeholder="Re-enter password"
              class="inputstyle"><br><br>
          </div>
          
          
          <p><input type="checkbox" v-model="checkAgree">I have agreed to the terms and privacy policy</p>
          <div style="justify-content:center">
            <a href="./LogIn.vue" style="color:white">
              <button type="button" class="logbtn" v-on:click="guide_signup">Sign Up</button></a></div>
        </form>
        
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
import guide_reg from '../guide_reg';

  export default {
    name: 'SignUp',
    components:{
    navbar,
    footerbar
  },
  methods:{
    async guide_signup(){
      await guide_reg.insertGuideSignUp(
        this.fName,this.NIC,this.phnNo,this.password,this.lName,
        this.email,this.Address,this.confPass);
    }
  },


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
.logbtn{
  background-color: #0084BD;
  border-color: #0084BD;
  border-style: solid;
  border-radius: 20px;
  padding-left: 30px;
  padding-right: 30px;
  width: 150px;
}
.logbtn:hover{
  background-color:#B3DAEB;
  border-color: #B3DAEB;
  color: #085B7F
}

.signupContent{
  justify-content: center;
  position: relative;
  right: 50%;
  left: 50%;
  border-radius: 10px;
  background-color: #bedeec;
  max-width: 600px;
}
  
#heading2{
 
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: #085B7F;
}
</style>