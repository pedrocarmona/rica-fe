# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



stopOrbit = () ->
  $(".orbit-timer").click()

startOrbit = () ->
  if $("#featured").length > 0
    $("#featured").css "display", "block"
    $("#featured").children("img").css "display", "block"
    $("#featured").children("orbit").css "display", "block"


jQuery ->
  if $("#featured").length > 0
    (document).addEventListener "page:load", startOrbit

    jQuery(document).foundation orbit:
      animation: "fade" # Sets the type of animation used for transitioning between slides, can also be 'fade'
      timer_speed: 2000 # Sets the amount of time in milliseconds before transitioning a slide
      pause_on_hover: true # Pauses on the current slide while hovering
      resume_on_mouseout: false # If pause on hover is set to true, this setting resumes playback after mousing out of slide
      animation_speed: 500 # Sets the amount of time in milliseconds the transition between slides will last
      stack_on_small: false
      navigation_arrows: true
      slide_number: true
      slide_number_text: "of"
      container_class: "orbit-container"
      stack_on_small_class: "orbit-stack-on-small"
      next_class: "orbit-next" # Class name given to the next button
      prev_class: "orbit-prev" # Class name given to the previous button
      timer_container_class: "orbit-timer" # Class name given to the timer
      timer_paused_class: "paused" # Class name given to the paused button
      timer_progress_class: "orbit-progress" # Class name given to the progress bar
      slides_container_class: "orbit-slides-container" # Class name given to the slides container
      bullets_container_class: "orbit-bullets"
      bullets_active_class: "active" # Class name given to the active bullet
      slide_number_class: "orbit-slide-number" # Class name given to the slide number
      caption_class: "orbit-caption" # Class name given to the caption
      active_slide_class: "active" # Class name given to the active slide
      orbit_transition_class: "orbit-transitioning"
      bullets: true # Does the slider have bullets visible?
      timer: true # Does the slider have a timer visible?
      variable_height: false # Does the slider have variable height content?
      swipe: true
      captions: true
      #before_slide_change: noop # Execute a function before the slide changes
      #after_slide_change: noop # Execute a function after the slide changes




$(window).load ->
  # then when the window has fully loaded
  startOrbit()



