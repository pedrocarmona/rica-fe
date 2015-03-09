# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



stopOrbit = () ->
  $(".orbit-timer").click()

startOrbit = () ->
  if $("#featured1").length > 0
    $("#featured1").css "display", "block"
    $("#featured1").children("li").css "display", "block"
    #$("#featured1").children("orbit").css "display", "block"


jQuery ->
  initialize_all()
  document.addEventListener "page:load", initialize_all


@initialize_all = () ->
  if $(".first-page").length > 0
    initialize_first_page()
  if $(".explore-page").length > 0
    initialize_explore_page()
  $('li.flag').click ->
    country = $(this).data('locale')
    # full page reload with locale=xx param added to url :)
    #WorldFlagsUrlHelper.reloadWithLocaleParam(country)
    # full page reload
    window.location.href = window.location.href.split("?")[0] + "?locale=" + country;
    return


@initialize_explore_page = () ->
  $(document).foundation "magellan",
    # specify the class used for active sections
    activeClass: "active"
    # how many pixels until the magellan bar sticks, 0 = auto
    threshold: 0


@initialize_first_page = () ->
  loadScript()
  jQuery(document).foundation orbit:
    animation: "slide" # Sets the type of animation used for transitioning between slides, can also be 'fade'
    timer_speed: 2000 # Sets the amount of time in milliseconds before transitioning a slide
    pause_on_hover: false # Pauses on the current slide while hovering
    resume_on_mouseout: false # If pause o  n hover is set to true, this setting resumes playback after mousing out of slide
    animation_speed: 300 # Sets the amount of time in milliseconds the transition between slides will last
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
    slide_selector: 'li' #Default is '*' which selects all children under the container
    bullets: false # Does the slider have bullets visible?
    timer: true # Does the slider have a timer visible?
    variable_height: false # Does the slider have variable height content?
    swipe: true
    captions: false
    #before_slide_change: noop # Execute a function before the slide changes
    #after_slide_change: noop # Execute a function after the slide changes

  startOrbit()


@initialize = () ->
  myOptions =
    zoom: 15
    center: new google.maps.LatLng(41.8218146,-6.7541353)
    mapTypeId: google.maps.MapTypeId.SATELLITE
    draggable: false
    zoomControl: false
    scrollwheel: false
    disableDoubleClickZoom: true

  map = new google.maps.Map(document.getElementById("google-map"), myOptions)
  marker = new google.maps.Marker(
    position: new google.maps.LatLng(41.8218146,-6.7541353)
    map: map
    title: "Quinta da Rica-Fé"
  )

  iw1 = new (google.maps.InfoWindow)(content: 'Quinta da Rica-Fé <br> <a href="https://www.google.pt/maps/place/41%C2%B049\'18.6%22N+6%C2%B045\'15.5%22W/@41.822589,-6.757349,736m/data=!3m1!1e3!4m2!3m1!1s0x0:0x0" target="_blank">directions</a>')
  google.maps.event.addListener marker, 'click', (e) ->
    iw1.open map, this
    return

  return

loadScript = ()->
  script = document.createElement("script")
  script.type = "text/javascript"
  script.src = "http://maps.google.com/maps/api/js?sensor=false&key=AIzaSyBE-EVvSrhjfH09pYIfHtBA_htTV-1-vvU&callback=initialize"
  document.body.appendChild script
  return






