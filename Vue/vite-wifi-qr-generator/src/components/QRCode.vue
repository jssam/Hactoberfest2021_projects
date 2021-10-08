<template>
  <div class="border-4 border-blue-100 w-3/4 h-3/4 flex justify-center items-center flex-col">
    <vue-qrcode
      :value="text"
      :options="options"
    ></vue-qrcode>
    <button class="p-3 border-2 border-blue-50 mt-5 bg-white" @click="downloadImage">Download</button>
  </div>
</template>

<script setup>
import VueQrcode from "@chenfengyuan/vue-qrcode";
import { ref } from "@vue/reactivity";
const options = {
    width: 200,
    //color: { dark: '#00ff00ff', light: '#ff0000ff' },
}
function downloadImage(){
    let downloadLink = document.createElement('a');
    downloadLink.setAttribute('download', 'qrcode.png');
    let canvas = document.querySelector('canvas');
    canvas.toBlob(function(blob) {
      let url = URL.createObjectURL(blob);
      downloadLink.setAttribute('href', url);
      downloadLink.click();
    });
}

defineProps(["text"]);
</script>

