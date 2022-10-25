<template>
  <div class="sidebar" :style="{ width: sidebarWidth }">
  

    <SidebarLink to="./HomePage.vue" icon="fa-solid fa-house">Home</SidebarLink> <br>
    <SidebarLink to="./dashboardPage.vue" icon="fa-solid fa-chalkboard-user">Dashboard</SidebarLink><br> 
    <SidebarLink to="./profilePage.vue" icon="fa-solid fa-user">Profile</SidebarLink><br>
    <SidebarLink to="#" icon="fa-solid fa-bell">Notification</SidebarLink><br>
    <SidebarLink to="#" icon="fa-solid fa-gear">Settings</SidebarLink><br>
 

    <span
      class="collapse-icon"
      :class="{ 'rotate-180': collapsed }"
      @click="toggleSidebar"
    >
      <i class="fas fa-angle-double-left" />
    </span>
  </div>
</template>

<script>
import SidebarLink from "./sidebarLink.vue"
import {collapsed,toggleSidebar,sidebarWidth} from "./state"

export default {
    props:{},
    components: { SidebarLink },
    setup(){
        return {collapsed,toggleSidebar,sidebarWidth}
    },
    name: 'sideNavbar' 
}
</script>
<style>
:root{
    --sidebar-bg-color:#0084BD;
    --sidebar-item-hover:#0084BD;
    --sidebar-item-active: #0084BD;

}
</style>
<style scoped>
.sidebar {
  color: white;
  background-color: var(--sidebar-bg-color);
  float: left;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  bottom: 0;
  padding: 0.5em;
  transition: 0.3s ease;
  display: flex;
  flex-direction: column;
}
.sidebar h1 {
  height: 2.5em;
}
.collapse-icon {
  position: absolute;
  bottom: 0;
  padding: 0.75em;
  color: rgba(255, 255, 255, 0.7);
  transition: 0.2s linear;
}
.rotate-180 {
  transform: rotate(180deg);
  transition: 0.2s linear;
}
</style>