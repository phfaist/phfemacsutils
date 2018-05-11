

// Closure for local variables
(function(){

    // Store a reference to the original remove method.
    var origHtml = jQuery.fn.html;

    // Override jQuery.html()
    jQuery.fn.html = function()
    {
        console.log("jQuery.html() called --> overridden method called" );

        if (arguments.length == 0) {
            // getter called, call original method
            return origHtml.apply(this, arguments);
        }
        // setter called. Set HTML, and then parse any MathJaX in there.
        origHtml.apply(this, arguments);
        MathJax.Hub.Typeset();
    };


    // add a language attribute to the '#markdown-body' element if it doesn't
    // have any already --> enable hyphenation
    $(document).ready(function() {
        if ( ! $("#markdown-body").attr("lang") ) {
            $("#markdown-body").attr("lang", "en");
        }
    });

})();
