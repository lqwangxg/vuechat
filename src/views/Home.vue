<template>
  <div class="home">
    <HelloWorld v-model:message="greetText" @changed="messageChanged"/>
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
  private messageChanged(newValue: string){
    this.greetText = newValue;
  }
}
</script>
