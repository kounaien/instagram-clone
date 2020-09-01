// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function () {
    $(".post-like").on("click", function() {
        var post_id = $(this).data("id");

        $.ajax({
            url: "/post/like/" + post_id,
            method: "GET"
        }).done(function(response){
            console.log(response);
        })
    })  
})