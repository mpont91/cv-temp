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
              <h1 class="display-1">Skills</h1>
            </v-col>
          </v-row>
          <v-row>
            <v-col>
              <skills-block extra></skills-block>
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
  head() {
    return {
      title: 'Skills',
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: 'Self evaluation of my development skills',
        },
      ],
    }
  },
}
</script>
