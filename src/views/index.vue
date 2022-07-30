<template>
  <div class="container">
    <div class="header">
      <div class="logo">
        <img src="../../public/logo.png" width="40px">
      </div>
      <div class="options">1</div>
      <div class="options">2</div>
      <div class="options">3</div>
      <div class="options">4</div>
    </div>
    <div class="content"></div>
  </div>
</template>

<script lang='ts' setup>
/**
 *@Author: YangHong
 *@CreateDate: 2022/7/30
 *@LastModifiedDate: 2022/7/30 16:56
 *@Description: 个人简历首页
 */

</script>

<style scoped>
.container {
  color: white;
  box-sizing: border-box;
  min-height: 100vh;
  background-image: linear-gradient(to right, rgba(10, 31, 52, 0.8), rgba(255, 255, 255, 0.3));
  display: grid;
  grid-template-rows: 60px 1fr;
  grid-template-columns: 1fr;
}
.header{
  display: grid;
  grid-template-columns: 3fr repeat(4,1fr);
  grid-template-rows: 1fr;
  background-color: rgba(0,0,0,.3);
}
.logo{
  padding-left: 40px;
  font-size: 20px;
  font-weight: bolder;
  align-self: center;
}
.logo img{
  vertical-align: middle;
}
.options{
  align-self: center;
}
</style>
