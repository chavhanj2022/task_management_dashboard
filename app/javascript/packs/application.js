// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("bootstrap");
import "bootstrap"
import "../packs/stylesheet/application";



Rails.start()
Turbolinks.start()
ActiveStorage.start()

document.addEventListener("turbolinks:load", function () {
    $(function () {
      $('[data-toggle="tooltip"]').tooltip();
      $('[data-toggle="popover"]').popover();
    });

    function test() {
    //  alert('test'); 
    let width = window.innerWidth;
    // console.log(width);
    }

    $(function () {
      let width = window.innerWidth;
      // console.log(width);
      window.onresize = test;
    })
  });



