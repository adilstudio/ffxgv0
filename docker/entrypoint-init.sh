#!/bin/sh

echo "Creating directories."
mkdir -p "/ffxg/instances/$DB_NAME/dbpassword/"
mkdir -p "/ffxg/instances/$DB_NAME/matomo/"
if [ ! -d "/ffxg/instances/$DB_NAME/production/" ]; then
    mkdir -p "/ffxg/instances/$DB_NAME/production/"
    chown 1000:1000 -R "/ffxg/instances/$DB_NAME/production/"
fi
if [ ! -d "/ffxg/instances/$DB_NAME/sidekiq/" ]; then
    mkdir -p "/ffxg/instances/$DB_NAME/sidekiq/"
    chown 1000:1000 -R "/ffxg/instances/$DB_NAME/sidekiq/"
fi
echo "Done!"

DB_PASSWORD_FILE="/ffxg/instances/$DB_NAME/dbpassword/dbpassword"

if [ "$(mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = \"$DB_USER\")")" = "0" ]; then
    echo "MySQL user $DB_NAME doesn't exist."
    if [ -e "$DB_PASSWORD_FILE" ]; then
        echo "Loading MySQL password from $DB_PASSWORD_FILE"
        DB_PASSWORD=$(cat "$DB_PASSWORD_FILE")
    else
        echo "Generating MySQL password"
        DB_PASSWORD=$(apg -n1 -m16 -MNCL)
        echo "$DB_PASSWORD" > "$DB_PASSWORD_FILE"
    fi
    echo "Creating MySQL user $DB_NAME"
    echo $DB_PASSWORD
    mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "CREATE USER \"$DB_USER\"@\"localhost\" IDENTIFIED BY \"$DB_PASSWORD\""
    echo "Done!"
else
    echo "MySQL user $DB_USER exists."
fi
if [ "$(mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e  "SELECT EXISTS(SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = \"$DB_NAME\");")" = 0 ]; then
    echo "Creating MySQL database $DB_NAME"
    mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "CREATE DATABASE \`$DB_NAME\`"
    echo "Done!"
else
    echo "MySQL database $DB_NAME exists."
fi
echo "Granting/fixing privileges"
mysql -u"$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" -e "GRANT ALL PRIVILEGES ON \`$DB_NAME\`.* TO \"$DB_USER\"@\"localhost\""
echo "Done!"
