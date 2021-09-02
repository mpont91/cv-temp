<template>
  <v-container fluid>
    <v-row>
      <v-col v-for="(item, i) in portfolio" :key="i" class="text-center">
        <v-card
          target="_blank"
          :href="item.url"
          class="text-center mx-auto"
          max-width="375"
        >
          <v-img :src="item.img"></v-img>
          <v-divider class="mt-4"></v-divider>
          <v-card-text class="text-center">
            <p class="text-h5">{{ item.name }}</p>
            <p>Framework: {{ item.framework }}</p>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      portfolio: [
        {
          name: 'GEO3 SA - landing page',
          img: 'geo3-landing.png',
          url: 'https://www.geo3.cat',
          framework: 'React',
        },
        {
          name: 'GEO3 SA - intranet',
          img: 'geo3-intranet.png',
          url: 'https://intranet.geo3.cat',
          framework: 'Laravel',
        },
      ],
    }
  },
}
</script>
