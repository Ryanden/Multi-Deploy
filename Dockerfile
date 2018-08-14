# docker build -t multi-deploy .
FROM            multi-deploy:base

COPY            .   /srv/backend
WORKDIR         /srv/backend

# supervisor.conf 복사
RUN             cp -f   /srv/backend/.config/supervisord.conf \
                      /etc/supervisor/conf.d/

CMD             supervisord -n
