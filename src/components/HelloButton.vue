<template>
    <button>Hello Button</button>
</template>

<script lang="ts">
    import {Component, Emit, Prop, Vue} from "vue-property-decorator";

    @Component
    export default class HelloButton extends Vue{
      @Prop()
      public greet?: string;

      @Emit()
      public click(){
        console.log("HelloButton clicked on Emit. ");
      }

      public onclick(){
        alert(this.greet);
        this.greet = "こんにちは";
      }
    }
</script>
