<template>
  <v-app-bar height="100" :absolute="absolute">
    <NuxtLink :to="{ name: 'index' }">
      <v-img src="/logo.png" max-width="50" max-height="50" />
    </NuxtLink>

    <NuxtLink
      v-slot="{ navigate }"
      class="ps-4 pointer"
      :to="{ name: 'index' }"
      custom
    >
      <h1 class="headline" @click="navigate">Hire Me!</h1>
    </NuxtLink>
    <div class="flex-grow-1" />
    <v-toolbar-items v-if="links.length > 0" class="hidden-md-and-down">
      <v-btn
        v-for="link in links"
        :key="link.id"
        text
        color="blue darken-4"
        :to="link.to"
        class="subtitle-2"
        :exact="link.exact"
      >
        <strong>{{ link.text }}</strong>
      </v-btn>
    </v-toolbar-items>
    <div class="flex-grow-1" />
    <v-menu offset-y>
      <template #activator="{ on }">
        <v-app-bar-nav-icon class="hidden-lg-and-up" v-on="on" />
      </template>
      <v-list v-if="links.length > 0">
        <v-list-item v-for="link in links" :key="link.id">
          <v-btn block text color="xf" :to="link.to" :exact="link.exact">
            <strong>{{ link.text }}</strong>
          </v-btn>
        </v-list-item>
      </v-list>
    </v-menu>
  </v-app-bar>
</template>

<script>
export default {
  props: {
    links: {
      type: Array,
      default() {
        return [
          {
            id: 'home',
            text: 'Home',
            to: { name: 'index' },
            exact: true,
          },
          {
            id: 'skills',
            text: 'Skills',
            to: { name: 'skills' },
          },
          {
            id: '2',
            text: 'Menu 2',
            to: { name: 'menu2' },
          },
          {
            id: '3',
            text: 'Menu 3',
            to: { name: 'menu3' },
          },
          {
            id: '4',
            text: 'Menu 4',
            to: { name: 'menu4' },
          },
          {
            id: '5',
            text: 'Menu 5',
            to: { name: 'menu5' },
          },
        ]
      },
    },
    absolute: {
      type: Boolean,
      default: false,
    },
  },
}
</script>
