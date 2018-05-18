$(document).ready(function(){
  $( function() {
    attags = "http://localhost:3000/skill-keyword.json";
    console.log(attags);
    availableTags = [];
    $.getJSON(attags, function(data){
      $.each(data, function (index, value) {
        availableTags.push(value);
      });
    });
    $( "#skills" ).autocomplete({
      source: availableTags
    });
  });
})  