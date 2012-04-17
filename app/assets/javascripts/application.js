
      $(document).ready(function(){

        $("button").click(function(){
          var button = $(this);
          var imageId = button.attr('data-image_id');
          $.ajax({
            url: "images/" + imageId + "/agree.json",
            type: 'PUT',
            contentType: 'application/json',
            success: function(result) {
              button.nextAll('input').val(result.votes);
            }
       });
     });

      $("#filter_by").change(function(){
        var filter = $(this).find(":selected").val();
        alert(filter);
        $.post("app/views/images/index.html.erb" , {filtered: filter });
      });
   });


