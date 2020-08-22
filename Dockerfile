from alpine
run apk update && apk upgrade && \
 apk add --virtual build-dependencies py3-pip && \
 apk add bash supervisor xvfb ttf-dejavu openbox dbus curl && \
 apk add py3-miniupnpc --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
 apk add x11vnc novnc nicotine-plus --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted && \
 pip install mutagen && \
 mkdir -p /root/nicotine-downloads && \
 mkdir -p /root/nicotine-uploads && \
 sed -i "s/scale', false/scale', true/" /usr/share/novnc/vnc_lite.html && \
 ln -s /root/nicotine-downloads /usr/share/novnc && \
 apk del build-dependencies && \
 rm -rf /var/cache/apk/*
add etc /etc
add usr /usr
entrypoint ["/usr/bin/supervisord","-c","/etc/supervisord.conf"]
