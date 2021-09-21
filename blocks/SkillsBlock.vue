<template>
  <div>
    <v-container v-for="(skill, s) in items" :key="s" fluid class="pa-0 ma-0">
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
          class="grow"
        >
          <v-tooltip bottom>
            <template v-slot:activator="{ on, attrs }">
              <div class="align-center" v-bind="attrs" v-on="on">
                <v-icon>
                  {{ item.icon }}
                </v-icon>
                {{ item.title }}
              </div>
              <v-progress-linear
                :color="skill.color"
                class="progress"
                height="3"
                :value="item.value"
              />
            </template>
            <span>{{ item.value }}%</span>
          </v-tooltip>
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
              title: 'PHP',
              icon: 'mdi-language-php',
              value: 90,
            },
            {
              title: 'JavaScript',
              icon: 'mdi-language-javascript',
              value: 80,
            },
            {
              title: 'Java',
              icon: 'mdi-language-java',
              value: 65,
            },
            {
              title: 'Python',
              icon: 'mdi-language-python',
              value: 55,
            },
            {
              title: 'C/C++',
              icon: 'mdi-language-cpp',
              value: 45,
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
              value: 80,
            },
            {
              title: 'Vue.js',
              icon: 'mdi-vuejs',
              value: 60,
            },
            {
              title: 'Nuxt.js',
              icon: 'mdi-nuxt',
              value: 40,
            },
            {
              title: 'Vuetify',
              icon: 'mdi-vuetify',
              value: 65,
            },
            {
              title: 'React.js',
              icon: 'mdi-react',
              value: 60,
            },
            {
              title: 'Symfony',
              icon: 'mdi-symfony',
              value: 55,
            },
            {
              title: 'Wordpress',
              icon: 'mdi-wordpress',
              value: 45,
            },
            {
              title: 'Magento2',
              icon: 'mdi-magento2',
              value: 40,
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
              value: 85,
            },
            {
              title: 'Docker',
              icon: 'mdi-docker',
              value: 70,
            },
          ],
        },
      ],
      skillsExtra: [
        {
          name: 'Testing',
          color: 'brown',
          items: [
            {
              title: 'Unit testing',
              icon: 'mdi-unit-testing',
              value: 85,
            },
            {
              title: 'Integration testing',
              icon: 'mdi-integration-testing',
              value: 70,
            },
            {
              title: 'Test-driven development',
              icon: 'mdi-test-driven',
              value: 60,
            },
          ],
        },
        {
          name: 'Databases',
          color: 'purple',
          items: [
            {
              title: 'Mysql',
              icon: 'mdi-mysql',
              value: 85,
            },
            {
              title: 'Postgresql',
              icon: 'mdi-postgresql',
              value: 70,
            },
            {
              title: 'Sqlserver',
              icon: 'mdi-sqlserver',
              value: 60,
            },
          ],
        },
        {
          name: 'IDE',
          color: 'orange',
          items: [
            {
              title: 'Phpstorm',
              icon: 'mdi-phpstorm',
              value: 85,
            },
            {
              title: 'VScode',
              icon: 'mdi-microsoft-visual-studio-code',
              value: 70,
            },
            {
              title: 'Netbeans',
              icon: 'mdi-netbeans',
              value: 70,
            },
            {
              title: 'Eclipse',
              icon: 'mdi-eclipse',
              value: 60,
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
              value: 90,
            },
            {
              title: 'Scrum',
              icon: 'mdi-scrum',
              value: 70,
            },
          ],
        },
        {
          name: 'Servers',
          color: 'red',
          items: [
            {
              title: 'Ubuntu',
              icon: 'mdi-ubuntu',
              value: 90,
            },
            {
              title: 'Debian',
              icon: 'mdi-debian',
              value: 90,
            },
            {
              title: 'Nginx',
              icon: 'mdi-nginx',
              value: 90,
            },
            {
              title: 'Apache',
              icon: 'mdi-apache',
              value: 80,
            },
            {
              title: 'Windows IIS',
              icon: 'mdi-microsoft-windows',
              value: 70,
            },
          ],
        },
        {
          name: 'Ticketing',
          color: 'cyan',
          items: [
            {
              title: 'Clickup',
              icon: 'mdi-clickup',
              value: 80,
            },
            {
              title: 'Jira',
              icon: 'mdi-jira',
              value: 70,
            },
          ],
        },
      ],
    }
  },
  computed: {
    items() {
      const i = this.skills
      if (this.extra) {
        i.push(...this.skillsExtra)
      }
      return i
    },
  },
}
</script>
