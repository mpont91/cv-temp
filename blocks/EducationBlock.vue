<template>
  <timeline-component :extra="extra" :items="education"></timeline-component>
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
      education: [
        {
          year: '2015 - 2012',
          title: 'Computer Engineering',
          location: 'Universitat de Girona',
          time: '09/2012 - 07/2014',
        },
        {
          year: '2012 - 2009',
          title: 'Technical Engineering in Computer Systems',
          location: 'Universitat de Girona',
          time: '09/2009 - 07/2012',
        },
      ],
    }
  },
}
</script>
