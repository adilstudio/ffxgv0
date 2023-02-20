#!/bin/sh

while ! [ -e /dbpassword/dbpassword ]; do
    echo "Waiting for database password..."
    sleep 10
done

#DB_PASSWORD=$(cat /dbpassword/dbpassword)

while ! mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "exit"; do
    echo "Waiting for database..."
    sleep 5
done

while ! nc -zw5 "$REDIS_HOST" "$REDIS_PORT"; do
    echo "Waiting for redis..."
    sleep 5
done

if ! mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "SELECT * FROM players;"  > /dev/null; then
    echo "Initializing database"
    cp /ffxg/db/structure.init /ffxg/db/structure.sql
    # FIXME: db:setup doesn't work and should be fixed. In the meantime, we use a dumb dump
    #rake db:setup
    mysql -v -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < /ffxg/db/dump.sql
    rake ffxg:create_admin
    echo "Done!"
else
    echo "Database already initialized, skipping..."
fi
echo "Applying database migrations"
rake db:migrate
echo "Done"
# cleanup pid file usefull for dev
rm -f tmp/pids/*
# Server
/ffxg/bin/rails server -b 0.0.0.0
