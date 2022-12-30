<template>
  <div class="header">

    <div class="index__top"></div>
    <div class="index__waves">
      <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
           viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
        <defs>
          <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"/>
        </defs>
        <g class="parallax">
          <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7"/>
          <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)"/>
          <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)"/>
          <use xlink:href="#gentle-wave" x="48" y="7" fill="rgba(255,255,255,1)"/>
        </g>
      </svg>
    </div>
    <div class="index__modules">
      <div class="modules__item">
        <img src="../assets/img/resume.svg" width="100%" height="100%">
      </div>
      <div class="modules__item">
        <img src="../assets/img/company.svg" width="100%" height="100%">
      </div>
      <div class="modules__item">
        <img src="../assets/img/work.svg" width="100%" height="100%">
      </div>
      <div class="modules__item">
        <img src="../assets/img/skill.svg" width="100%" height="100%">
      </div>
      <div class="modules__item">
        <img src="../assets/img/contact.svg" width="100%" height="100%">
      </div>
    </div>
    <div class="index__title"></div>
  </div>

</template>
<script setup>

</script>

<style scoped>
.header {
  position: relative;
  text-align: center;
  /*background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);*/
  background: linear-gradient(60deg, #B1F78B 0%, #00BFA6 100%);
}

.index__title{
  position: absolute;
  font-size: 140px;
  text-align: center;
  color: #ffffff;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
  letter-spacing: 50px;
}

.index__modules {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  width: 70%;
  height: 300px;
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
  z-index: 1;
}

.modules__item {
  flex: 1;
  height: 100%;
  background-color: rgba(255, 255, 255, .6);
  backdrop-filter: saturate(50%) blur(8px);
  border-radius: 15px;
  animation: vertical-move-forever 5s cubic-bezier(.55, .5, .45, .5) infinite;
}
.modules__item:nth-child(2){
  animation-delay: 1s;
}
.modules__item:nth-child(3){
  animation-delay: 2s;
}
.modules__item:nth-child(4){
  animation-delay: 3s;
}
.modules__item:nth-child(5){
  animation-delay: 4s;
}

.index__top {
  height: 65vh;
  width: 100%;
  margin: 0;
  padding: 0;
}

.waves {
  position: relative;
  width: 100%;
  height: 15vh;
  margin-bottom: -7px; /*Fix for safari gap*/
  min-height: 100px;
  max-height: 150px;
}

/* Animation */

.parallax > use {
  animation: move-forever 25s cubic-bezier(.55, .5, .45, .5) infinite;
}

.parallax > use:nth-child(1) {
  animation-delay: -2s;
  animation-duration: 7s;
}

.parallax > use:nth-child(2) {
  animation-delay: -3s;
  animation-duration: 10s;
}

.parallax > use:nth-child(3) {
  animation-delay: -4s;
  animation-duration: 13s;
}

.parallax > use:nth-child(4) {
  animation-delay: -5s;
  animation-duration: 20s;
}

@keyframes move-forever {
  0% {
    transform: translate3d(-90px, 0, 0);
  }
  100% {
    transform: translate3d(85px, 0, 0);
  }
}
@keyframes vertical-move-forever {
  0% {
    transform: translateY(0px);
  }
  25% {
    transform: translateY(-20px);
  }
  50% {
    transform: translateY(0px);
  }
  75% {
    transform: translateY(20px);
  }
  100% {
    transform: translateY(0px);
  }
}
</style>
