<?php

defined('ABSPATH') or exit('Please don&rsquo;t call the plugin directly. Thanks :)');

function print_section_info_ai()
{
    print_pro_section('ai');

    $docs     = function_exists('seopress_get_docs_links') ? seopress_get_docs_links() : ''; ?>

    <p>
        <?php _e('Enter your <strong>API key</strong>, select an <strong>AI model</strong>, and start automagically <strong> generating your title and description meta tags, as well as alt texts for images</strong> (from the SEO metabox or from your posts‘ list view bulk actions).', 'wp-seopress-pro'); ?>
    </p>

    <div class="seopress-notice">
        <h3><?php _e('How to connect your site with OpenAI?', 'wp-seopress-pro'); ?></h3>

        <ol>
            <li>
                <?php
                /* translators: %s documentation URL */
                printf(__('Create an account on <a href="%s" target="_blank">OpenAI</a><span class="dashicons dashicons-external"></span> website.', 'wp-seopress-pro'), esc_url( 'https://platform.openai.com/account/api-keys' ));
                ?>
            </li>
            <li><?php _e('Generate an <strong>OpenAI API key</strong>.', 'wp-seopress-pro'); ?></li>
            <li><?php _e('<strong>Paste it</strong> below and <strong>Save changes</strong>.', 'wp-seopress-pro'); ?></li>
            <li><?php _e('Make a <strong>payment of at least $1</strong> on the OpenAI platform.', 'wp-seopress-pro'); ?></li>
            <li><?php _e('And There you go! Start <strong>generating titles, meta desc and alt texts using AI</strong>.', 'wp-seopress-pro'); ?></li>
        </ol>
    </div>

    <p>
        <?php /* translators: %s documentation URL */ printf(__('If you encounter any error, please read this <a href="%s" target="_blank">guide</a>.','wp-seopress-pro'), $docs['ai']['errors']); ?>
    </p>
<?php
}





