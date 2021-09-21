<template>
  <timeline-component :extra="extra" :items="experience"></timeline-component>
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
      experience: [
        {
          year: '2018',
          title: 'Full stack developer & IT management',
          location: 'Xarxafarmacèutica SL',
          time: '07/2018 - now',
        },
        {
          year: '2016',
          title: 'E-commerce developer',
          location: 'Global Software Partner',
          time: '07/2016 - 07/2018',
        },
        {
          year: '2014',
          title: 'Full stack developer & IT management',
          location: 'Grup Puig Infante',
          time: '07/2014 - 07/2016',
        },
      ],
    }
  },
}
</script>
