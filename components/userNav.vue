<template>
<nav class="navbar navbar-expand-md ">

    <div class="collapse navbar-collapse px-4" id="navbarSupportedContent">
      <a class="navbar-brand mainlogo" href="#">
        <img src="../assets/withoutSlogan.png" width="60px" height="60px" alt="" class="logoclass">
        </a>
    </div>
 

    <div class=" flex-row-reverse collapse navbar-collapse" id="navbarSupportedContent">
   
    <ul class="navbar-nav mr-auto">
      <li class="nav-item ">
        <a class="nav-link active" href="/HomePage.vue">Hello, Denuka!</a> <!--Photo by Andrea Piacquadio: https://www.pexels.com/photo/man-standing-near-building-white-black-turtleneck-shirt-874158/-->
      </li>
       </ul>
    </div>

    
</nav>
</template>

<script>

export default{
  name:'userNav'

}
</script>
<style scoped>
.logoclass{
    margin-left: 100px;
}
.profile{
    width: 60px;
    height: 60px;
    border-radius: 45px;
    margin-right: 100px;
}
</style>