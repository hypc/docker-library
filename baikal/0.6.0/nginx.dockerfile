FROM ckulka/baikal:0.6.0-nginx

COPY lib/CardDAV/Plugin.php /var/www/baikal/vendor/sabre/dav/lib/CardDAV/Plugin.php

