APACHE_CONFIG_LINE="DocumentRoot /var/www/html"

cat teste.txt | while read line; do
    if [[ "$line" == "$APACHE_CONFIG_LINE" ]]; then
        echo "$line"
        printf "<Directory \"/var/www/html\">
                    AllowOverride All
                </Directory>"
    fi
done
