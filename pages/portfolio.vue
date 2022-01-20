<template>
  <v-container fluid class="pa-0 ma-0">
    <v-row>
      <v-col>
        <banners-component :slider-start="4"></banners-component>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-container>
          <v-row>
            <v-col>
              <h1 class="display-1">Portfolio</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <portfolio-block></portfolio-block>
            </v-col>
          </v-row>
        </v-container>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import BannersComponent from '@/components/BannersComponent'
import PortfolioBlock from '@/blocks/PortfolioBlock'

export default {
  components: { BannersComponent, PortfolioBlock },
  head() {
    return {
      title: 'Portfolio',
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'List of projects I worked on or am still working on.',
        },
      ],
    }
  },
}
</script>
