<template>
  <div v-if="_isMobile()">
    当前页面已在手机端打开
  </div>
  <div v-else>
    当前页面已在PC端打开
  </div>
</template>
<script lang="ts" setup>
const _isMobile = () => {
  return navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i);
}
</script>
<style scoped>

</style>