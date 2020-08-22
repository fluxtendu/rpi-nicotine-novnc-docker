## Typical Usage

#### Build
```
git clone https://github.com/fluxtendu/rpi-nicotine-novnc-docker/
cd rpi-nicotine-novnc-docker
docker build . -t "your_image_build_name"
```

##### Using Docker CLI
```
docker run -d --name nicotine --restart=always \
-v /your_path_to/nicotine_settings_folder:/root/.nicotine \
-v /your_path_to/downloads_folder:/root/nicotine-downloads \
-v /your_path_to/shares_folder:/root/nicotine-shares:ro \
-p 6080:6080 \
your_image_build_name
```
