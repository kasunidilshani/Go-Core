<template>

<div class="page-content page-container" id="page-content">
    <div class="padding">
        <div class="row container d-flex justify-content-center">
            <div class="col-xl-11 col-md-12">
                <div class="card user-card-full">
                    <div class="row ml-1 m-r-0">
                        <div class="col-sm-4 bg-clr user-profile">
                            <div class="card-block text-center text-white">
                                <div class="m-b-25">
                                    <img src="../assets/profile.jpg" class="img-radius" alt="User-Profile-Image">
                                </div>
                                <h6 class="f-w-600">Hembo Tingor</h6>
                                <p>Tour Guide</p>
                                <i class=" fas fa-edit m-t-10 f-16"></i>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="card-block">
                                <h6 class="m-b-20 p-b-5 b-b-default f-w-600"> Personal Information</h6>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <p class="m-b-10 f-w-600">First name</p>
                                        <h6 class="text-muted f-w-400">Hembo</h6>
                                    </div>
                                    <div class="col-sm-4">
                                        <p class="m-b-10 f-w-600">Last Name</p>
                                        <h6 class="text-muted f-w-400">Tingor</h6>
                                    </div>
                                    <div class="col-sm-4">
                                        <p class="m-b-10 f-w-600">NIC</p>
                                        <h6 class="text-muted f-w-400">999345678V</h6>
                                    </div>
                                </div>
                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">Contact Information</h6>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <p class="m-b-10 f-w-600">Email</p>
                                        <h6 class="text-muted f-w-400">hembotingo@gmail.com</h6>
                                    </div>
                                    <div class="col-sm-4">
                                        <p class="m-b-10 f-w-600">Contact Number</p>
                                        <h6 class="text-muted f-w-400">+94 704958637</h6>
                                    </div>
                                    <div class="col-sm-4">
                                        <p class="m-b-10 f-w-600">Social Media</p>
                                        <ul class="social-link list-unstyled m-t-40 m-b-10">
                                            <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="facebook" data-abc="true"><i class="fa-brands fa-facebook-f" aria-hidden="true"></i></a></li>
                                            <li><a href="#!" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="instagram" data-abc="true"><i class="fa-brands fa-instagram"> aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600">User Account</h6>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Username</p>
                                        <h6 class="text-muted f-w-400">hembotingo</h6>
                                    </div>
                                    <div class="col-sm-6">
                                        <p class="m-b-10 f-w-600">Password </p>
                                        <h6 class="text-muted f-w-400">xxxxxxxxxx</h6>
                                    </div>
                                </div>
                                <h6 class="m-b-20 m-t-40 p-b-5 b-b-default f-w-600"></h6>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <button>Edit Profile</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <button>Delete Account</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</template>


<script>

export default{

  name:"profilePageTest",
  components:{
   
    
  },

  data(){
    return{
      posts: [],
      error: '',
      text: ''
    }
  },
  async loadProfileInfo(){
    try{
      this.posts = await guide_profile_load.getGuideProfile();   //class name.method in the PostService.js file
    }
    catch(err){
      this.error = err.message;
    }

  },

  setup(){
    return{sidebarWidth},{ collapsed, toggleSidebar }
  }
}
</script>