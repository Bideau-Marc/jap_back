# Utilisez une image PostgreSQL officielle en tant qu'image de base
FROM postgres:latest

# Définissez des variables d'environnement pour PostgreSQL
ENV POSTGRES_DB dbJap
ENV POSTGRES_USER moi
ENV POSTGRES_PASSWORD monPassword

# Copiez des fichiers SQL ou d'autres fichiers d'initialisation, le cas échéant
# COPY init.sql /docker-entrypoint-initdb.d/

# Exposez le port PostgreSQL par défaut (5432)
EXPOSE 5432
