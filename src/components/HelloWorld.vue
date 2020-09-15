<template>
  <div class="hello">
    <h2> message is :{{text}} </h2>
    <input v-mode="text" @change="changed"  placeholder="input here" />
  </div>
</template>

<script lang="ts">
import { Vue } from 'vue-class-component';
import { Emit, Prop, Watch } from 'vue-property-decorator';

export default class HelloWorld extends Vue {
  @Prop() 
  private message = "";
  private text = "";

  @Emit("update:message")
  private changed(){
    return this.text;
  }
  @Watch("message")
  onchanged() {
    this.text = this.message;  
  }
}
</script>
