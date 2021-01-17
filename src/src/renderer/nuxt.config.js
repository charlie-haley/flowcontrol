/**
 * By default, Nuxt.js is configured to cover most use cases.
 * This default configuration can be overwritten in this file
 * @link {https://nuxtjs.org/guide/configuration/}
 */

module.exports = {
  mode: 'spa', // or 'universal'
  head: {
    title: 'flowcontrol',
    meta: [{ charset: 'utf-8' }]
  },
  loading: false,
  plugins: [
    { ssr: true, src: '@/plugins/icons.js' },
    { ssr: true, src: '@/plugins/buefy.js' }

  ],
  buildModules: [

  ],
  modules: [

  ]
}
