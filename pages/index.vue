<template>
  <v-container fluid class="pa-0 ma-0">
    <v-row>
      <v-col>
        <v-carousel hide-delimiters cycle height="100vh">
          <v-carousel-item
            v-for="n in 9"
            :key="n"
            :src="`https://picsum.photos/4096/2160?image=${n * 2}`"
            :lazy-src="`https://picsum.photos/409/216?image=${n * 2}`"
          ></v-carousel-item>
        </v-carousel>
      </v-col>
    </v-row>
    <v-row>
      <v-col>
        <v-container>
          <v-row>
            <v-col>
              <h1 class="display-1">Skills</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <skills-block></skills-block>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <h1 class="display-1">Education</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <timeline-component :items="education"></timeline-component>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <h1 class="display-1">Experience</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <timeline-component :items="experience"></timeline-component>
            </v-col>
          </v-row>
        </v-container>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import SkillsBlock from '@/blocks/SkillsBlock'

export default {
  components: { SkillsBlock },
  layout: 'index',
  data() {
    return {
      education: [
        {
          year: '2010',
          title: 'Test1',
        },
        {
          year: '2011',
          title: 'Test2',
        },
        {
          year: '2012',
          title: 'Test3',
        },
      ],
      experience: [
        {
          year: '2015',
          title: 'Test1',
        },
        {
          year: '2018',
          title: 'Test2',
        },
        {
          year: '2020',
          title: 'Test3',
        },
      ],
    }
  },
  head() {
    return {
      title: 'Home page',
    }
  },
}
</script>
