require("@rails/ujs").start()
require("@rails/activestorage").start()
require('turbolinks').start();
require("channels")

import "bootstrap";
import { initMapbox } from "../plugins/init_mapbox.js"

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
