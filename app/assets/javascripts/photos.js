$(function() {

  var currentUser = Parse.User.current();
if (currentUser) {

  // making sure the DOM is ready
    console.log( "ready!" );
    $("#name_selected_name").on('click', function(event){
      // testing if when I click on the drop down menu its working

      console.log('it works');
    });

    $(".image").click(function(event){
      event.preventDefault();
      console.log('image');
      // when clicking on the picture, preventing default
      //and adding the picture url, id to this URL(defined in the routes) to the value of the gallery's name

      $.ajax({
        url:'/add_picture' ,
        data: {
          picture_id: $(this).data("id"),
          picture_url: $(this).data("url"),
          gallery_name: $("#name_selected_name").val()
        },
        method: "POST",
        dataType: JSON


      });
      alert("Your picture has been added");


    });

  }



});
