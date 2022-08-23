<template>
    <!------Navigation Bar------->
<navbar />
 <!------Navigation Bar ends------->

<!------Content------->
<div id="content" >
  <div class="row">
    <div class="col-sm" style="padding-top:50px">
      <img src="../assets/WithSlogan.png" alt="gocore logo" width="300px" height="300px">
    </div>
    
    <div class="col-sm p-3">
      <div><h3>Sign Up</h3></div>
      <form action="" class=" row p-4">
        <div class="col-sm">
          <label for="name">First Name</label><br>
          <input type="text" required placeholder="Enter your first name" class="inputstyle"> <br><br>
          <label for="text">NIC</label><br>
          <input type="email" placeholder="example@gmail.com" class="inputstyle"><br><br>
          <label for="name">Contact Details</label><br>
          <input type="email" placeholder="+94xxxxxxxxx" class="inputstyle"><br><br>
          <label for="password">Password</label><br>
          <input type="password" required placeholder="Password" class="inputstyle" id="id_password"><br><br>
        </div>
        <div class="col-sm">
          <label for="name">Last Name</label><br>
          <input type="text" required placeholder="Enter your last name" class="inputstyle"> <br><br>
          <label for="name">Email</label><br>
          <input type="email" placeholder="example@gmail.com" class="inputstyle"><br><br>
          <label for="text">Address</label><br>
          <input type="email" placeholder="example@gmail.com" class="inputstyle"><br><br>
          <label for="password">Confirm Password</label><br>
          <input type="password" required placeholder="Re-enter password" class="inputstyle"><br><br>
        </div>
        <p><input type="checkbox">I have agreed to the terms and privacy policy</p>
        <div style="justify-content:center"><a href="/dashboardPage.vue" style="color:white"><button class="btn newbtn btn-primary btn-lg">Sign Up</button></a></div>
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
import navbar from "./topNavbar.vue"
import footerbar from "./footerBar.vue"
 
export default{
  components:{
    navbar,
    footerbar
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
  

#heading2{
 
  font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: #085B7F;
}
</style>
