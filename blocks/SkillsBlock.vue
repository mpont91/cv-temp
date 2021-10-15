<template>
  <div>
    <v-container v-for="(skill, s) in skills" :key="s" fluid class="pa-0 ma-0">
      <v-row>
        <v-col>
          <h2 class="title">{{ skill.name }}</h2>
        </v-col>
      </v-row>
      <v-row>
        <v-col
          v-for="(item, i) in skill.items"
          :key="i"
          cols="12"
          sm="6"
          md="4"
          lg="auto"
          class="me-4"
        >
          <v-icon>{{ item.icon }}</v-icon>
          {{ item.title }}
          <v-rating
            :color="skill.color"
            readonly
            half-increments
            length="5"
            size="15"
            :value="item.value"
          ></v-rating>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  props: {
    extra: {
      type: Boolean,
      default: false,
    },
  },
  data() {
    return {
      skills: [
        {
          name: 'Languages',
          color: 'blue',
          items: [
            {
              title: 'HTML',
              icon: 'mdi-language-html',
              value: 4.5,
            },
            {
              title: 'CSS',
              icon: 'mdi-language-css',
              value: 4.5,
            },
            {
              title: 'PHP',
              icon: 'mdi-language-php',
              value: 5,
            },
            {
              title: 'JavaScript',
              icon: 'mdi-language-javascript',
              value: 4,
            },
          ],
        },
        {
          name: 'frameworks',
          color: 'green',
          items: [
            {
              title: 'Laravel',
              icon: 'mdi-laravel',
              value: 5,
            },
            {
              title: 'Symfony',
              icon: 'mdi-symfony',
              value: 3.5,
            },
            {
              title: 'Magento2',
              icon: 'mdi-magento2',
              value: 2.5,
            },
            {
              title: 'Vue.js',
              icon: 'mdi-vuejs',
              value: 4.5,
            },
            {
              title: 'Nuxt.js',
              icon: 'mdi-nuxt',
              value: 3,
            },
            {
              title: 'Vuetify',
              icon: 'mdi-vuetify',
              value: 4,
            },
            {
              title: 'React.js',
              icon: 'mdi-react',
              value: 2.5,
            },
          ],
        },
        {
          name: 'Development tools',
          color: 'yellow',
          items: [
            {
              title: 'Git',
              icon: 'mdi-git',
              value: 4.5,
            },
            {
              title: 'Docker',
              icon: 'mdi-docker',
              value: 4,
            },
          ],
        },
        {
          name: 'Testing',
          color: 'brown',
          items: [
            {
              title: 'Unit testing',
              icon: 'mdi-unit-testing',
              value: 4.5,
            },
            {
              title: 'Integration testing',
              icon: 'mdi-integration-testing',
              value: 4,
            },
            {
              title: 'Test-driven development',
              icon: 'mdi-test-driven',
              value: 4.5,
            },
          ],
        },
        {
          name: 'Metodologies',
          color: 'indigo',
          items: [
            {
              title: 'Kanban',
              icon: 'mdi-kanban',
              value: 3.5,
            },
            {
              title: 'SOLID design principles',
              icon: '',
              value: 4.5,
            },
            {
              title: 'Rest API design',
              icon: 'mdi-api',
              value: 5,
            },
          ],
        },
        {
          name: 'Project management software',
          color: 'cyan',
          items: [
            {
              title: 'Clickup',
              icon: 'mdi-clickup',
              value: 4,
            },
            {
              title: 'Jira',
              icon: 'mdi-jira',
              value: 3.5,
            },
          ],
        },
      ],
    }
  },
}
</script>
