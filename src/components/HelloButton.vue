<template>
    <button @click="onClick">Hello Button</button>
    <el-button @click="onElClick" type="primary">Element Button </el-button>
</template>

<script lang="ts">
import { Vue } from 'vue-class-component';
import {Emit, Prop} from 'vue-property-decorator';

    export default class HelloButton extends Vue{
      @Prop()
      public greet = "";

      @Emit()
      public click(){
        console.log("this is a log from emit click.");
        alert(this.greet + "-----> emit click");
      }

      public onClick(){
        alert(this.greet);
      }
      private onElClick(){
        alert(this.greet + " from el-button.");
      }
    }
</script>
