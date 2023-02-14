#!/bin/sh

while ! [ -e /dbpassword/dbpassword ]; do
    echo "Waiting for database password..."
    sleep 10
done


# Database initialization
while ! mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "exit"; do
    echo "Waiting for database..."
    sleep 10
done

# Server
bundle exec sidekiq -r /ffxg/
