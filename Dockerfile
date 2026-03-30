# Usa la imagen oficial de PHP con Apache
FROM php:8.1-apache

# Instala extensiones necesarias para conectarse a MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Activa mod_rewrite (si lo necesitas)
RUN a2enmod rewrite

# Copia todo el código de tu sitio al contenedor
COPY . /var/www/html/

# Establece el directorio de trabajo
WORKDIR /var/www/html/

# Expone el puerto 80
EXPOSE 80

# Inicia Apache en primer plano
CMD ["apache2-foreground"]
