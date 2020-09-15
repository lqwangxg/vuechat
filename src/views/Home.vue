<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld msg="Welcome to Your Vue.js + TypeScript App"/>
    <HelloButton :greet="greetText" @click="onHelloButtonClicked" ></HelloButton>
  </div>
</template>

<script lang="ts">
import { Options, Vue } from 'vue-class-component';
import HelloWorld from '@/components/HelloWorld.vue'; // @is alias to /src
import HelloButton from '@/components/HelloButton.vue'; 

@Options({
  components: {
    HelloWorld,
    HelloButton
  },
})
export default class Home extends Vue {
  public greetText: string = "hello";
  public onHelloButtonClicked(){
    this.greetText = "こんにちは、よろしくお願いいたします。";
  }
}
</script>
