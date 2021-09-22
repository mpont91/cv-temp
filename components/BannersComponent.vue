<template>
  <v-carousel hide-delimiters cycle height="400px">
    <v-carousel-item
      v-for="n in 5"
      :key="n"
      :src="`/banners/${n}.webp`"
    ></v-carousel-item>
  </v-carousel>
</template>

<script>
export default {}
</script>
