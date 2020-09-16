<template>
  <div class="hello">
    <h2> message is :{{text}} </h2>
    <input v-model="text" @change="changed"  placeholder="input here" />
  </div>
</template>

<script lang="ts">
import { Vue } from 'vue-class-component';
import { Emit} from 'vue-property-decorator';

export default class HelloWorld extends Vue {
 
  private message = "";
  
  private text = "";

  @Emit()
  private changed(){
    return this.text;
  }

  mounted(){
     console.log("mounted in hellowrold.");
     this.text = this.message;  
  }
}
</script>
