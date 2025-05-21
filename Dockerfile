# Usa una imagen oficial de Ruby
FROM ruby:3.3

# Crea el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto

COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copia el resto de los archivos del proyecto
COPY . .


# Dar permisos al script
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]