// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-datepicker
//= require jquery.validate
//= require jquery.validate.bootstrap
//= require bootstrap-wysihtml5-all

$(document).ready(function() {
    $('form.validate').validate();

    $('.date_picker').datepicker( {
        language: "tr",
        format: 'yyyy-mm-dd'

    });

    $('[rel=html-editor]').wysihtml5();

    $('.add_comment').click(function(e) {
        e.preventDefault();
        var target = $(this).attr("data-target");
        if ($(this).is("button"))  {
            $(target).show();
            var input = $(target).find('input.comment-text');
            input.focus().effect("highlight", {}, 300);
        } else {
            $(target).toggle();
        }

    });
});
