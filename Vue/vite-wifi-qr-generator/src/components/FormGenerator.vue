<template>
   <form
      class="
        p-10
        bg-white
        rounded 
        flex
        justify-center
        items-center
        flex-col
        shadow-md
        w-96
      "
      @submit.prevent="onSubmit"
    >
      <p class="mb-5 text-3xl uppercase text-gray-600">QR Code Generator</p>
      <select  v-model="network_encryption" name="type" id="type" class="w-full border-2 outline-none mb-5 p-3 focus:border-blue-700 rounded">
        <option value="WPA" class="p-3">WPA</option>
        <option value="WEP" class="p-3">WEP</option>
        <option value="WPA2-EAP" class="p-3">WPA2-EAP</option>
      </select>
      <input
      v-model="ssid"
        type="ssid"
        name="ssid"
        class="
          mb-5
          p-3
          w-full
          focus:border-blue-700
          rounded
          border-2
          outline-none
        "
        autocomplete="off"
        placeholder="SSID"
        required
      />
      <input
      v-model="password"
        type="text"
        name="password"
        class="
          mb-5
          p-3
          w-full
          focus:border-blue-700
          rounded
          border-2
          outline-none
        "
        autocomplete="off"
        placeholder="PASSWORD"
        required
      />
      <button
        class="
          bg-blue-800
          hover:bg-blue-900
          text-white
          font-bold
          p-2
          rounded
          w-full
        "
        id="login"
        type="submit"
      >
        <span>Generate</span>
      </button>
    </form>
</template>

<script setup>
import { ref } from 'vue'

defineProps({
  msg: String
})

const emit = defineEmits(['onSubmit'])

const ssid = ref();
const password = ref();
const network_encryption = ref('WPA');

const onSubmit = () => {
  emit('onSubmit', {ssid, password, network_encryption})
}

</script>

<style scoped>
a {
  color: #42b983;
}
</style>
