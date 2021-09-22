<template>
  <v-container fluid class="pa-0 ma-0">
    <v-row>
      <v-col>
        <banners-component></banners-component>
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
