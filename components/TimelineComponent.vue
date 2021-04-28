<template>
  <v-timeline dense>
    <v-timeline-item v-for="(item, i) in items" :key="i" large>
      <v-container>
        <v-row align="center">
          <v-col cols="2" sm="1">
            <p class="py-0 my-0">{{ item.year }}</p>
          </v-col>
          <v-col>
            <v-card raised>
              <v-card-title>{{ item.title }}</v-card-title>
              <v-card-text>
                <span>{{ item.location }}</span>
                <span v-if="extra"><br />{{ item.time }}</span>
              </v-card-text>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </v-timeline-item>
  </v-timeline>
</template>

<script>
export default {
  props: {
    items: {
      type: Array,
      default() {
        return []
      },
    },
    extra: {
      type: Boolean,
      default: false,
    },
  },
}
</script>
