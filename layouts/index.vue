<template>
  <v-app>
    <header-component :absolute="true" :links="links"></header-component>
    <v-main>
      <nuxt />
    </v-main>
    <footer-component></footer-component>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
      links: [
        {
          id: 'home',
          text: 'Home',
          to: { name: 'index' },
          exact: true,
        },
        {
          id: '1',
          text: 'Menu 1',
          to: { name: 'menu1' },
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
      ],
    }
  },
}
</script>
