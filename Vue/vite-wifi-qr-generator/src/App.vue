<template>
  <div class="w-screen h-screen flex justify-center items-center bg-blue-800">
    <FormGenerator @onSubmit="onSubmit" v-if="!text" />
    <QRCode v-else :text="text" />
  </div>
</template>

<script setup>
import { ref } from "@vue/reactivity";
import FormGenerator from "./components/FormGenerator.vue";
import QRCode from "./components/QRCode.vue";

const text = ref();

const onSubmit = ({ ssid, password, network_encryption }) => {
  text.value = `WIFI:T:${network_encryption.value};S:${ssid.value};P:${password.value};;`;
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
}
</style>
