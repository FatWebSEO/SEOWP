jQuery(document).ready(function ($) {

    // Generate title and meta with AI from SEO metabox
    $('.seopress_ai_generate_seo_meta').on("click", function () {
        var $button = $(this);
        var $spinner = $button.prev('.spinner');

        $button.attr("disabled", "disabled");
        $spinner.css("visibility", "visible");
        $spinner.css("float", "none");
        $("#seopress_ai_generate_seo_meta_log").hide();

        // Post ID
        var post_id;
        if (typeof $("#seopress-tabs").attr("data_id") !== "undefined") {
            post_id = $("#seopress-tabs").attr("data_id");
        } else if (typeof $("#seopress_content_analysis .wrap-seopress-analysis").attr("data_id") !== "undefined") {
            post_id = $("#seopress_content_analysis .wrap-seopress-analysis").attr("data_id");
        }

        // Locale
        var lang = 'en_US';
        if (typeof $button.attr("data-lang") !== "undefined") {
            lang = $button.attr("data-lang");
        }

        // Meta to generate
        var meta = '';
        if (typeof $button.attr("data_meta") !== "undefined") {
            meta = $button.attr("data_meta");
        }

        $.ajax({
            method: "POST",
            url: seopressAjaxAIMetaSEO.seopress_ai_generate_seo_meta,
            data: {
                action: "seopress_ai_generate_seo_meta",
                post_id: post_id,
                lang: lang,
                meta: meta,
                _ajax_nonce: seopressAjaxAIMetaSEO.seopress_nonce,
            },
            success: function (data) {
                $spinner.css("visibility", "hidden");
                $button.removeAttr("disabled");
                if (data.success === true) {
                    if (meta === 'title') {
                        $("#seopress_titles_title_meta").val(data.data.title);
                        $("#seopress_titles_title_meta").trigger("keyup");
                    }
                    if (meta === 'desc') {
                        $("#seopress_titles_desc_meta").val(data.data.desc);
                        $("#seopress_titles_desc_meta").trigger("keyup");
                    }
                    if (data.data.message !== 'Success') {
                        $("#seopress_ai_generate_seo_meta_log").show();
                        $("#seopress_ai_generate_seo_meta_log").html("<div class='seopress-notice is-error'><p>" + data.data.message + "</p></div>");
                    }
                }
            }
        });
    });

    //Check OpenAI license key status
    $('#seopress-open-ai-check-license').on("click", function () {
        $(this).attr("disabled", "disabled");
        $('.spinner').css("visibility", "visible");
        $('.spinner').css("float", "none");

        $.ajax({
            method: "GET",
            url: seopressAjaxAICheckLicense.seopress_ai_check_license_key,
            data: {
                action: "seopress_ai_check_license_key",
                seopress_ai_openai_api_key: $('#seopress_ai_openai_api_key').val(),
                _ajax_nonce: seopressAjaxAICheckLicense.seopress_nonce,
            },
            success: function (data) {
                $('.spinner').css("visibility", "hidden");
                $('#seopress-open-ai-check-license').removeAttr("disabled");
                if (data.success === true) {
                    $("#seopress-open-ai-check-license-log").show();
                    $("#seopress-open-ai-check-license-log").html("<div class='seopress-notice is-" + data.data.code + "'><p>" + data.data.message + "</p></div>");
                }
            }
        });
    });

    //OpenAI bulk actions from post types
    $('body').on('click', '#doaction, #doaction2', async function (e) {
        var action = $('select[name="action"], select[name="action2"]').val();

        const validActions = ['seopress_ai_title', 'seopress_ai_desc', 'seopress_ai_alt_text']
        if (!validActions.includes(action)) {
            return
        }

        e.preventDefault();


        var postIds = [];
        var postIdsFailed = [];
        $('.wp-list-table tbody input[type="checkbox"]:checked').each(function () {
            postIds.push($(this).val());
        });

        if (postIds.length === 0) {
            return
        }

        $("#doaction, #doaction2").attr("disabled", "disabled");
        $("#doaction, #doaction2").parent().append('<div class="spinner" style="visibility:visible"></div>');


        let ajaxAction
        if (action === 'seopress_ai_desc') {
            ajaxAction = 'seopress_bulk_action_ai_desc'
        } else if (action === 'seopress_ai_title') {
            ajaxAction = 'seopress_bulk_action_ai_title'
        } else if (action === 'seopress_ai_alt_text') {
            ajaxAction = 'seopress_bulk_action_ai_alt_text'
        }


        const currentUrl = new URL(window.location.href);
        let lang = currentUrl.searchParams.get('lang');
        if (lang === 'all') {
            lang = null
        }

        for (const postId of postIds) {
            const response = await $.ajax({
                url: ajaxurl,
                type: 'POST',
                data: {
                    action: ajaxAction,
                    lang: lang,
                    post_id: postId,
                    _ajax_nonce: $('#_wpnonce').val(),
                },
            });

            switch(ajaxAction) {
                case 'seopress_bulk_action_ai_desc':
                    if(response.data.desc === ""){
                        postIdsFailed.push(postId);
                    }
                    break;
                case 'seopress_bulk_action_ai_title':
                    if(response.data.title === ""){
                        postIdsFailed.push(postId);
                    }
                    break;
                case 'seopress_bulk_action_ai_alt_text':
                    if(response.data === ""){
                        postIdsFailed.push(postId);
                    }
                    break;
            }
        }

        currentUrl.searchParams.set('bulk_ai_posts', postIds.length - postIdsFailed.length);
        currentUrl.searchParams.set('bulk_ai_posts_failed', postIdsFailed.length);

        window.history.replaceState({}, '', currentUrl);
        window.location.reload();

    });
})
