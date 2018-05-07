var Notary = Notary || {};
(function thename($){

    var NotaryBase = {

        populate: function(template, arrayOrObj, destiny, callback) {
            // template, array and destiny are  values from dom data-*
            var $template = $('[data-template="'+template+'"]');
            var $destiny = $('[data-container="'+destiny+'"]');

            var self = this;
            if($.isArray(arrayOrObj)){
                $.each(arrayOrObj, function( index, obj ) {
                    var $newObj = self.makeObject($template, obj);
                    $newObj.appendTo($destiny);

                    // EXECUTE item callback
                    // console.log(obj);

                    if (!!callback)
                        callback($newObj, obj);

                });
            } else {
                var $newObj = self.makeObject($template, obj);
                    $newObj.appendTo($destiny);
                    if (!!callback)
                        callback($newObj, obj);
            }

            $template.detach();

        },

        makeObject: function($template, obj){
            var $obj = $template.clone();
            $obj.removeAttr('data-template');
            this.makeTexts($obj, obj);
            this.makeLinks($obj, obj);
            this.makeImages($obj, obj);

            return $obj;
        },

        makeTexts: function($dom, obj){
            var $texts = $dom.find('[data-value]');
            $.each($texts, function( index, item ) {
                var val = $(item).attr('data-value');
                $(item).text(obj[val]);
            });
        },

        makeLinks: function($dom, obj){
            var $links = $dom.find('[data-link]');
            $.each($links, function( index, item ) {
                var val = $(item).attr('data-link');
                $(item).attr("href", obj[val]);
            });
        },

        makeImages: function($dom, obj){
            var $images = $dom.find('[data-image]');
            $.each($images, function( index, item ) {
                var val = $(item).attr('data-image');
                $(item).attr("src", obj[val]);
            });
        },

        makeAttende: function(){
            var $form = $("#registerForm");
            var $values = $form.find("[data-register]");

            var reqObj = {};
            $.each($values, function( index, item ) {
                var key = $(item).attr('data-register');
                var value = $(item).val();

                reqObj[key] =  value;
            });


            var $boxes = $form.find('[data-tech]');

            var skills = "";

            console.log($boxes);

            $.each($boxes, function( index, item ) {
                if($(item).is(':checked')){
                    skills += $(item).attr("data-tech") + ",";
                }
            });

            var other = $form.find("#otherTech").val().toUpperCase();

            if(!!other){
                if (other.length > 0)
                    skills += other;
                else
                    skills = skills.substring(0, other.length - 1);
            }

            if(skills.length == 0)
                skills += ".";

            reqObj["skills"] = skills;

            return reqObj;
        }
    }


    Notary = NotaryBase;

}(jQuery));



