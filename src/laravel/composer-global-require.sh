#!/bin/bash
echo; echo "  ⏬ Running composer require $@"
if [ "$(php -r 'echo PHP_VERSION_ID;')" -ge "80100" ]; then
    COMPOSER_REQUIRE_OPTIONS="${COMPOSER_REQUIRE_OPTIONS} --ignore-platform-reqs"
fi
exec composer global require $COMPOSER_REQUIRE_OPTIONS "$@"
