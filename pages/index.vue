<template>
  <v-container fluid class="pa-0">
    <v-row no-gutters>
      <v-col fluid class="mx-auto text-center">
        <carousel-block></carousel-block>
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
import CarouselBlock from '@/blocks/CarouselBlock'
import SkillsBlock from '@/blocks/SkillsBlock'

export default {
  components: { SkillsBlock, CarouselBlock },
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
