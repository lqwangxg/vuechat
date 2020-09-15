<template>
    <button @click="onClick">Hello Button</button>
</template>

<script lang="ts">
import { Vue } from 'vue-class-component';
import {Emit, Prop} from 'vue-property-decorator';

    export default class HelloButton extends Vue{
      @Prop()
      public greet?: string;

      @Emit()
      public click(){
        //console.log("HelloButton clicked from parent to child by $emit. ");
      }

      public onClick(){
        alert(this.greet);
        this.greet = "こんにちは, from HelloButton Self.";
      }
    }
</script>
