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
              <h1 class="display-1">Experience</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <experience-block extra></experience-block>
            </v-col>
          </v-row>
        </v-container>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import ExperienceBlock from '@/blocks/ExperienceBlock'

export default {
  components: { ExperienceBlock },
  head() {
    return {
      title: 'Experience',
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Experience obtained in the companies where I have worked',
        },
      ],
    }
  },
}
</script>
