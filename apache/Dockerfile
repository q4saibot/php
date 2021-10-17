########################################################################
#                                                                      #
#   Apache + PHP                                                       #
#                                                                      #
########################################################################

FROM    php:8.0.9-apache-bullseye

# From
LABEL   q4.saibot.from.dist.name="Debian" \
        q4.saibot.from.dict.release="bullseye" \
        q4.saibot.from.dist.version="11" \
        q4.saibot.from.image.name="php" \
        q4.saibot.from.image.version="8.0.9" \
        q4.saibot.from.image.tag.name="apache" \
        q4.saibot.from.image.tag.version="2"
# Image
LABEL   q4.saibot.image.description="Description" \
        q4.saibot.image.version.date="2021.08.19" \
        q4.saibot.image.version.build="1" \
        q4.saibot.image.version.major="0" \
        q4.saibot.image.version.minor="0" \
        q4.saibot.image.version.patch="0"
# Maintainer
LABEL   q4.saibot.maintainer.email="Q4.SaiBot@GMail.com" \
        q4.saibot.maintainer.github="q4saibot" \
        q4.saibot.maintainer.gitlab="q4saibot"

EXPOSE  80


# PHP .ini
VOLUME  [ "/usr/local/etc/php" ]
# Apache .conf
VOLUME  [ "/etc/apache2" ]
# Apache html
VOLUME  [ "/var/www/html" ]

WORKDIR /var/www/html

RUN     [ "touch",  "index.php" ]

HEALTHCHECK \
        --start-period=10s \
        --interval=1m \
        --timeout=10s \
        --retries=3 \
        CMD curl -f http://localhost/ || exit 1
