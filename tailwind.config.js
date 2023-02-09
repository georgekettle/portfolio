module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    fontFamily: {
      sans: ['Apercu', 'sans-serif'],
      header: ['GT Pressura', 'sans-serif']
    },
    extend: {
      colors: {
        bg: {
          light: '#fffbf9'
        },
        primary: {
          '50': '#f5f2fc',
          '100': '#e6e2f8',
          '200': '#d6cef3',
          '300': '#b8aae9',
          '400': '#957cda',
          '500': '#7954c9',
          '600': '#6a43a8',
          '700': '#574474',
          '800': '#403252',
          '900': '#2a2334',
        },
        secondary: {
          '50': '#fff8eb',
          '100': '#fff3d6',
          '200': '#ffe2a8',
          '300': '#ffc766',
          '400': '#fea939',
          '500': '#f58f19',
          '600': '#e17414',
          '700': '#b45918',
          '800': '#8b4923',
          '900': '#6b3f24',
        },       
      },
      animation: {
        'marqueeone': 'marqueeone 50s linear infinite',
        'marqueetwo': 'marqueetwo 50s linear infinite'
      },
      keyframes: {
        marqueeone: {
          '0%': { transform: 'translateX(0%)' },
          '100%': { transform: 'translateX(-100%)' }
        },
        marqueetwo: {
          '0%': { transform: 'translateX(100%)' },
          '100%': { transform: 'translateX(0%)' }
        }
      }
    },
  },
}
