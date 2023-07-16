const colors = require('tailwindcss/colors');

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    fontFamily: {
      sans: ['Satoshi', 'sans-serif'],
      header: ['Satoshi', 'sans-serif']
    },
    extend: {
      colors: {
        bg: {
          light: '#fffbf9'
        },
        tertiary: colors.stone,
        primary: colors.sky,
        secondary: colors.purple,    
      },
    },
  },
}
