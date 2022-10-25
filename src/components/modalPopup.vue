<template>
  <transition name="modal-animation">
    <div v-show="modalActive" class="modal">
      <transition name="modal-animation-inner">
        <div v-show="modalActive" class="modal-inner">
          <div class="d-flex flex-row-reverse p-3">
            <button @click="close" type="button"><i class="fas fa-window-close"></i></button>
          </div>
          
          <!-- Modal Content -->
          <slot />
        </div>
      </transition>
    </div>
  </transition>
</template>

<script>
export default {
  props: ["modalActive"],
  setup(props, { emit }) {
    const close = () => {
      emit("close");
    };

    return { close };
  },
};
</script>

<style scoped>
.modal-animation-enter-active,
.modal-animation-leave-active {
  transition: opacity 0.3s cubic-bezier(0.52, 0.02, 0.19, 1.02);
}

.modal-animation-enter-from,
.modal-animation-leave-to {
  opacity: 0;
}

.modal-animation-inner-enter-active {
  transition: all 0.3s cubic-bezier(0.52, 0.02, 0.19, 1.02) 0.15s;
}

.modal-animation-inner-leave-active {
  transition: all 0.3s cubic-bezier(0.52, 0.02, 0.19, 1.02);
}

.modal-animation-inner-enter-from {
  opacity: 0;
  transform: scale(0.8);
}

.modal-animation-inner-leave-to {
  transform: scale(0.8);
}

.modal {
  display: flex;
  justify-content: center;
  margin: auto;
  height: 100vh;
  width: 100vw;
  position: fixed;
  top: 0;
  left: 0;
  background-color: rgba(255, 255, 255, 0.7);}

  .modal-inner {
    position: relative;
    max-width: 640px;
    width: 80%;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
    background-color: #fff;
    padding: 64px 16px;}

  

    button {
      padding: 5px 10px;
      border: none;
      font-size: 16px;
      background-color: rgba(220, 20, 60, 0.653);
      color: #fff;
      cursor: pointer;
      flex-direction: row-reverse;
    }
  

</style>