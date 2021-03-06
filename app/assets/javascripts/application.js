require("./react_ujs.js");
import $ from "jquery";
import PersonImage from "./components/person_image.jsx";
import QuestionWrapper from "./components/question_wrapper.jsx";
import Flasher from "./components/flasher.jsx";
import PersonSetup from "./components/person_setup.jsx";
import Stats from "./components/stats.jsx";
import Logout from "./components/logout.jsx";
import Settings from "./components/settings.jsx";

window.PersonImage = PersonImage;
window.QuestionWrapper = QuestionWrapper;
window.Flasher = Flasher;
window.PersonSetup = PersonSetup;
window.Stats = Stats;
window.Logout = Logout;
window.Settings = Settings;

$.ajaxPrefilter(function( options ) {
  if ( !options.beforeSend) {
    options.beforeSend = function (xhr) {
      xhr.setRequestHeader('X-CSRF-Token',  $('meta[name="csrf-token"]').attr('content'));
    }
  }
});
