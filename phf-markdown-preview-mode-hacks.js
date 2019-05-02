

// Closure for local variables
(function(){

    // Store a reference to the original remove method.
    var origHtml = jQuery.fn.html;

    // disable frustrating auto-scroll. Disable all animations, for that matter.
    jQuery.fn.animate = function() { };

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


    var setHyphenate = function(val) {
        $("#markdown-body").toggleClass("hyphenate-on", val);
        $("#hyphens-button").toggleClass("button-on", val);
    };
    var toggleHyphenate = function() {
        var newval = $("#markdown-body").is(".hyphenate-on") ? false : true;
        setHyphenate(newval);
    };

    var setDarkMode = function(val) {
        $("body").toggleClass("darkmode", val);
        $("#darkmode-button").toggleClass("button-on", val);
    };
    var toggleDarkMode = function() {
        var newval = $("body").is(".darkmode") ? false : true;
        setDarkMode(newval);
    };
    
    // switch to turn hyphenation on/off
    $(document).ready(function() {
        $("body").append($('<div id="hyphens-button" class="md-button">hyph.</div>'));
        console.log("Added hyphens button.")
        $("#hyphens-button").click(toggleHyphenate);
        $("body").append($('<div id="darkmode-button" class="md-button">dark</div>'));
        console.log("Added dark-mode button.")
        $("#darkmode-button").click(toggleDarkMode);

        setHyphenate(true);
    });

})();
