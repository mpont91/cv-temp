<template>
  <v-container fluid>
    <v-row>
      <v-col
        v-for="(item, i) in portfolio"
        :key="i"
        cols="12"
        sm="6"
        lg="4"
        class="text-center"
      >
        <v-hover v-slot="{ hover }">
          <v-card
            :elevation="hover ? 12 : 2"
            target="_blank"
            :href="item.url"
            class="text-center mx-auto"
            width="375"
          >
            <v-img height="775px" contain :src="item.img"></v-img>
            <v-divider></v-divider>
            <v-card-text class="text-center grey lighten-5">
              <p class="text-h5">{{ item.name }}</p>
              <p class="text-subtitle-1">{{ item.subtitle }}</p>
              <p class="text-subtitle-2">Framework: {{ item.framework }}</p>
            </v-card-text>
          </v-card>
        </v-hover>
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
          name: 'Xarxafarmacèutica SL',
          subtitle: 'Landing page',
          img: '/portfolio/xf-landing.webp',
          url: 'https://particulars.xarxafarma.com',
          framework: 'Vue.js',
        },
        {
          name: 'Xarxafarmacèutica SL',
          subtitle: 'Intranet',
          img: '/portfolio/xf-intranet.webp',
          url: 'https://apps.xarxafarma.com',
          framework: 'Laravel + Vue.js',
        },
        {
          name: 'GEO3 SA',
          subtitle: 'Landing page',
          img: '/portfolio/geo3-landing.webp',
          url: 'https://www.geo3.cat',
          framework: 'React.js',
        },
        {
          name: 'GEO3 SA',
          subtitle: 'Intranet',
          img: '/portfolio/geo3-intranet.webp',
          url: 'https://intranet.geo3.cat',
          framework: 'Laravel',
        },
        {
          name: 'Misparanoiasmentales',
          subtitle: 'Personal blog',
          img: '/portfolio/misparanoias.webp',
          url: 'https://misparanoiasmentales.com',
          framework: 'Wordpress',
        },
      ],
    }
  },
}
</script>
