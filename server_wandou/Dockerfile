FROM heawercher/system_with_x_chrome_python36

RUN apt-get install -y locales
#RUN apt-get install -y fonts-beteckna fonts-noto-cjk
RUN apt-get update
RUN apt-get install -y autossh

RUN locale-gen zh_CN.UTF-8 && update-locale

ENV LANG zh_CN.UTF-8
ENV TZ=Asia/Chongqing
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip3.6 install lxml requests bs4 logme schedule docopt pymongo \
                    flask Flask-PyMongo gevent \
                    -i https://pypi.tuna.tsinghua.edu.cn/simple

COPY utils/ /home/c/wuyi/utils/
COPY proxy_providers/ /home/c/wuyi/proxy_providers/
COPY fake_identity/ /home/c/wuyi/fake_identity/
COPY ads_platforms/ /home/c/wuyi/ads_platforms/
COPY MyScheduler/ /home/c/wuyi/MyScheduler/
COPY MyWebServer/ /home/c/wuyi/MyWebServer/

COPY Xresources /home/c/.Xresources
COPY .ssh /home/c/.ssh/
COPY mongodump /home/c/wuyi/MyScheduler/mongodump
COPY mongorestore /home/c/wuyi/MyScheduler/mongorestore

RUN chown c:c -R /home/c

COPY bootstrap.sh /

CMD '/bootstrap.sh'
