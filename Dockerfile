ARG NGINX_VERSION

FROM nginx:${NGINX_VERSION}

ARG BUILDPLATFORM
ARG BUILDOS
ARG BUILDARCH
ARG BUILDVARIANT

ARG NAME

COPY default.conf /etc/nginx/conf.d/default.conf

COPY index.html /var/www/html/index.html


RUN sed -i "s/{NAME}/${NAME}/g" /var/www/html/index.html
RUN sed -i "s/{NGINX_VERSION}/${NGINX_VERSION}/g" /var/www/html/index.html
#RUN sed -i "s/{BUILDPLATFORM}/${BUILDPLATFORM}/g" /var/www/html/index.html
RUN sed -i "s/{BUILDOS}/${BUILDOS}/g" /var/www/html/index.html
RUN sed -i "s/{BUILDARCH}/${BUILDARCH}/g" /var/www/html/index.html


