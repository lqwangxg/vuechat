<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png">
    <HelloWorld v-model:message="greetText"/>
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
  private greetText = "hello, before button clicked.";
  public onHelloButtonClicked(){
    this.greetText = "goodbye, after button clicked.";
  }
}
</script>
