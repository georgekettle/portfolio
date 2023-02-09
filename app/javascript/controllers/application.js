import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

// Import and register external Stimulus controllers
import Reveal from 'stimulus-reveal-controller'
application.register('reveal', Reveal)

export { application }
