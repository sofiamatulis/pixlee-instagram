$(function() {
    console.log( "ready!" );
    $("#name_selected_name").on('click', function(event){

      console.log('it works');
    });

    $(".image").click(function(event){
      event.preventDefault();
      console.log('image');

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

    });









});
