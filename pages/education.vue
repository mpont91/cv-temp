<template>
  <v-container fluid class="pa-0 ma-0">
    <v-row>
      <v-col>
        <v-carousel hide-delimiters cycle height="400px">
          <v-carousel-item
            v-for="n in 9"
            :key="n"
            :src="`https://picsum.photos/4096/400?grayscale&image=${n * 4}`"
            :lazy-src="`https://picsum.photos/409/40?grayscale&image=${n * 4}`"
          ></v-carousel-item>
        </v-carousel>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-container>
          <v-row>
            <v-col>
              <h1 class="display-1">Education</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <education-block extra></education-block>
            </v-col>
          </v-row>
        </v-container>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import EducationBlock from '@/blocks/EducationBlock'

export default {
  components: { EducationBlock },
  head() {
    return {
      title: 'Education',
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Education received',
        },
      ],
    }
  },
}
</script>
