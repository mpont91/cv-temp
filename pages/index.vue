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
        </v-container>
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
              <experience-block></experience-block>
            </v-col>
          </v-row>
        </v-container>
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
              <education-block></education-block>
            </v-col>
          </v-row>
        </v-container>
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
import SkillsBlock from '@/blocks/SkillsBlock'
import ExperienceBlock from '@/blocks/ExperienceBlock'
import EducationBlock from '@/blocks/EducationBlock'
import PortfolioBlock from '@/blocks/PortfolioBlock'

export default {
  components: { EducationBlock, ExperienceBlock, SkillsBlock, PortfolioBlock },
  layout: 'index',
  head() {
    return {
      title: 'Home page',
    }
  },
}
</script>
