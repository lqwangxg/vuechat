<template>
    <button @click="onClick">Hello Button</button>
</template>

<script lang="ts">
    import {Options, Vue} from "vue-class-component";

    @Options({
      props: {
        greet: String
      }
    })

    @Component
    export default class HelloButton extends Vue{
      
      public click(){
        this.$emit("click", this.greet);
        console.log("HelloButton clicked from parent to child by $emit. ");
      }

      public onClick(){
        alert(this.greet);
        this.greet = "こんにちは, from HelloButton Self.";
      }
    }
</script>
