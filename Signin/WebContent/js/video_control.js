      $(function() {
            // Binding a click event
            // From jQuery v.1.7.0 use .on() instead of .bind()
            $('.my-button').bind('click', function(e) {
        var self = $(this) //button
        , content = $('.content'); 
        $('element_to_pop_up').bPopup({
            onOpen: function() {
                content.html(self.data('bpopup') || '');
            },
            onClose: function() {
                content.empty();
            }
        });
                // Prevents the default action to be triggered. 
                e.preventDefault();
                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup();
            });
        });