<template>
  <v-carousel v-model="slider" hide-delimiters cycle height="400px">
    <v-carousel-item
      v-for="n in 5"
      :key="n"
      :src="`/banners/${n}.webp`"
    ></v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  props: {
    sliderStart: {
      type: Number,
      default: 0,
    },
  },
  data() {
    return {
      slider: 0,
    }
  },
  created() {
    this.slider = this.sliderStart
  },
}
</script>
