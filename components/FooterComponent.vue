<template>
  <v-footer class="grey darken-4 px-md-12 mt-12">
    <v-container fluid class="py-4 px-md-12">
      <v-row align="center">
        <v-col cols="12" md="3" class="text-center text-md-left">
          <v-avatar tile>
            <v-img
              src="/logo.webp"
              class="ma-auto mx-md-0"
              max-width="50"
              max-height="50"
            >
            </v-img>
          </v-avatar>
        </v-col>
        <v-col cols="12" md="6">
          <p class="text-no-wrap text-center text-h6 white--text ma-0">
            Marc Pont
          </p>
        </v-col>
        <v-col cols="12" md="3" class="text-center text-md-right">
          <v-btn
            dark
            icon
            href="https://www.linkedin.com/in/marc-pont-casadevall-282b454b/"
            target="_blank"
          >
            <v-icon>mdi-linkedin</v-icon>
          </v-btn>
          <v-btn dark icon href="https://github.com/mpont91" target="_blank">
            <v-icon>mdi-github</v-icon>
          </v-btn>
          <v-btn
            dark
            icon
            href="https://twitter.com/slayerbleast"
            target="_blank"
          >
            <v-icon>mdi-twitter</v-icon>
          </v-btn>
          <v-btn dark icon href="mailto:mpont91@gmail.com" target="_blank">
            <v-icon>mdi-email</v-icon>
          </v-btn>
        </v-col>
      </v-row>
    </v-container>
  </v-footer>
</template>

<script>
export default {}
</script>
