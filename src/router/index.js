import { createWebHistory, createRouter } from "vue-router"
import HomePage from '../components/HomePage.vue'
import loginPage from '../components/LogIn.vue'
import signup from '../components/SignUp.vue'
import dashboard from '../components/dashboardPage.vue'
import planView from '../components/viewPlan.vue'
import tourPlan from '../components/tourPlan.vue'
import profilePage from '../components/profilePage.vue'
import guideRegister from '../components/guideRegister.vue'
import cabRegister from '../components/cabRegister.vue'
import hotelRegister from '../components/hotelRegister.vue'
import testForm from '../components/testForm.vue'
import hotelBooking from '../components/stay-dine.vue'
import cabService from '../components/cabService.vue'



const routes = [
    {path: "/",component: HomePage},
    {path: "/HomePage.vue",component: HomePage},
    {path: "/LogIn.vue",component: loginPage},
    {path: "/SignUp.vue",component: signup},
    {path: "/dashboardPage.vue",component: dashboard},
    {path: "/viewPlan.vue",component: planView},
    {path: "/tourPlan.vue",component: tourPlan},
    {path: "/profilePage.vue",component: profilePage},
    {path: "/guideRegister.vue",component: guideRegister},
    {path: "/cabRegister.vue",component: cabRegister},
    {path: "/hotelRegister.vue",component: hotelRegister},
    {path: "/testForm.vue",component: testForm},
    {path: "/stay-dine.vue",component: hotelBooking},
    {path: "/cabService.vue",component: cabService},
   


  ]

const router = createRouter({
    history: createWebHistory(),
    routes
  })
  
  export default router
 
