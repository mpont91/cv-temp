<template>
  <v-carousel hide-delimiters cycle height="100vh">
    <v-carousel-item
      v-for="n in 9"
      :key="n"
      :src="`https://picsum.photos/4096/2160?image=${n * 5 + 10}`"
      :lazy-src="`https://picsum.photos/409/216?image=${n * 5 + 10}`"
      cover
    ></v-carousel-item>
  </v-carousel>
</template>

<script>
export default {
  computed: {
    carouselHeight() {
      let height = 'auto'
      if (this.$vuetify.breakpoint.lgAndUp) {
        height = '400px'
      }
      return height
    },
  },
}
</script>
