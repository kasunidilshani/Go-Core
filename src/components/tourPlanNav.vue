<template>
      <nav class="navbar navbar-expand-md shadow ">
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
          <a class="nav-link active" href="./viewPlan.vue">Route</a>
        </li>
      </ul>
    </div>

     <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
         <a class="nav-link active" href="./tourPlan.vue">Tour Plan</a>
        </li>
      </ul>
    </div>

     <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
          <a class="nav-link active" href="./stay-dine.vue">Lounge &amp; Dine</a>
        
        </li>
      </ul>
    </div>

     <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item ">
          <a class="nav-link active" href="./cabService.vue">Transport</a>
        
        </li>
      </ul>
    </div>
  </nav>
</template>
<script>
export default{
    name:'tourPlanNav'
}
</script>

<style scoped>
.navbar{
  margin-left: 0px;
}
</style>