#!/bin/bash

WP_CONFIG="wp-config.php"
ACTION_CODE="add_action('phpmailer_init', function(\$phpmailer) {
    \$phpmailer->isSMTP();
    \$phpmailer->Host = 'mailhog';
    \$phpmailer->Port = 1025;
    \$phpmailer->SMTPAuth = false;
});"

if ! grep -q "add_action('phpmailer_init'" "$WP_CONFIG"; then
    echo "Adding phpmailer_init action to wp-config.php..."
    echo "$ACTION_CODE" >> "$WP_CONFIG"
    echo "Action added to wp-config.php"
else
    echo "phpmailer_init action already present in wp-config.php"
fi