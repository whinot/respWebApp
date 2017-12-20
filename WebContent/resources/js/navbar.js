/**
 * dynamic navbar
 */
    var codeBlock = '<div class="content">' +
                        '<h1>This is a heading</h1>' +
                        '<p>This is a paragraph of text.</p>' +
                        '<p><strong>Note:</strong> If you don\\\'t escape "quotes" properly, it will not work.</p>' +
                    '</div>';
    $(document).ready(function(){
        // Inserting HTML code inside wrapper element
        $(".wrapper").html(codeBlock);
    });