<template>
  <!------Navigation Bar------->
  <navbar />
  <!------Navigation Bar ends------->
  <!------Content------->

  <div id="content">
    <div class="row">
      <div class="col-sm" style="padding-top:10px">
        <img src="../assets/WithSlogan.png" alt="gocore logo" width="100px" height="200px">
      </div>

      <div class="col-sm p-3">
        <div>
          <h3>Sign In</h3>
        </div>
        <form action="./dashboardPage.vue?name" class=" row p-4">
          <div class="col-sm">
            <label for="name">User Name</label><br>
            <input type="text" v-model="name" required placeholder="Enter Username"
              class="inputstyle">
            <br><br>
            <label for="text">Password</label><br>
            <input type="text" v-model="password" placeholder="Enter Password" class="inputstyle"><br><br>
            
          </div>
          
          <div style="justify-content:center"><a href="/dashboardPage.vue" style="color:white">

              <button type="submit" class="logbtn" v-on:click="guide_login">Sign In</button></a></div>
        </form>
        
      </div>
      <hr>
      
    </div>
  </div>
  <!------Content ends------->
  <!------Footer------->

  <footerbar />
  <!------Footer ends------->

</template>
<script>
// import axios from 'axios';
import guide_login_home from '../guide_login_home';

  export default {
    name: 'SignIn',
  methods:{
    async guide_login(){
      await guide_login_home.insert_guide_login(
        this.fName,this.NIC,this.phnNo,this.password,this.lName,
        this.Address,this.confPass);
    }
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
  
#heading2{
 
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: #085B7F;
}
</style>