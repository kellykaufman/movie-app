// Was I supposed to put the defer here? I originally did, but that doesn't feel right. I can't remember how to link my js to my html. WHen I searched it only has
// script tag with defer
/* global axios */

axios.get("http://localhost:3000/api/actors").then(function (response) {
  var actors = response.data;
  console.log(actors);
});
