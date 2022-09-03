<template>
  <div class="container-fluid">
    <!-- Start 顶部导航栏 -->
    <div class="nav">
      <div class="nav-contents">
        <div class="nav-logo-area">
          <img src="../assets/logo.png" alt="个人简历" width="40">
          <span class="nav-logo-text">YangHong</span>
        </div>
        <div class="nav-bars-area">
          <div class="nav-bar-item" v-for="(nav,index) in navBars" @click="handleNavClick(index)">
            <a class="nav-bar-item-label" :href="nav.href" :class="{active: currentIndex===index}">{{ nav.name }}</a>
          </div>
        </div>
      </div>
    </div>
    <!-- End 顶部导航栏 -->

    <div class="test" :id="item.id" v-for="(item,index) in navBars">{{item.name}}</div>
  </div>
</template>

<script lang='ts' setup>
import {ref} from 'vue'

/**
 *@Author: YangHong
 *@CreateDate: 2022/8/13
 *@LastModifiedDate: 2022/8/13 13:58
 *@Description:
 */
const navBars = ref([
  {name: '主页',id:'home',href:'#home'},
  {name: '个人技能',id:'skill',href:'#skill'},
  {name: '项目经历',id:'experience',href:'#experience'},
  {name: '关于我',id:'about',href:'#about'},
  {name: '联系我',id:'contact',href:'#contact'},
])
const currentIndex = ref(0)
const handleNavClick = (index:number) => {
  currentIndex.value = index
}
</script>

<style scoped lang="less">
@primary-color: #ED7457;
@primary-color-transparent: rgba(237,116,87,.3);
.nav {
  position: sticky;
  top: 0;
  box-shadow: 0 5px 5px 0 #dddddd;
  padding: 5px 60px;
  box-sizing: border-box;
  font-family: 'resume';
  .nav-contents {
    width: 100%;
    height: 60px;
    line-height: 60px;
    display: flex;

    .nav-logo-area {
      flex: 1;
      .nav-logo-text{
        display: inline-block;
        margin-left: 40px;
        font-weight: bolder;
      }

      img{
        vertical-align: middle;
      }
    }

    .nav-bars-area {
      flex: 1;
      display: flex;

      .nav-bar-item {
        flex: 1;
        text-align: center;
        user-select: none;
        cursor: pointer;

        .nav-bar-item-label {
          box-sizing: border-box;
          display: inline-block;
          height: 100%;
          min-width: 60%;
          position: relative;
          letter-spacing: 3px;
          text-decoration: none;
          color: black;
        }
        .nav-bar-item-label:hover{
          font-weight: bolder;
          color: @primary-color;
        }
        .nav-bar-item-label:before {
          position: absolute;
          bottom: -4px;
          left: 0;
          content: '';
          height: 4px;
          width: 0%;
          transition: all .5s;
          background-color: @primary-color;
        }
        .nav-bar-item-label:hover:before {
          width: 100%;
        }
      }

    }
  }
}
.active{
  border-bottom: 4px solid @primary-color;
  color: @primary-color;
  font-weight: bolder;
}

.test{
  height: 800px;
}
</style>
