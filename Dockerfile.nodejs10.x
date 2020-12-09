FROM scratch

ADD 1f0ac3109070ab70fb4a7e40a7054fc866233b3db1a3a67ae331e9221e74119d.tar.xz /
ADD 2d1a2cd33d6aaad44f694f2759433c03459db86163f0d0df408da0bb65943852.tar.xz /
ADD 5c83b7b62d6894ea5e8f1827dd3c2b9acb3900ca865e5555b1fcbfade2dfd6f8.tar.xz /
ADD 8f926f64aba6419ff5a504cf083f988eceead1ab435d2d78b129bf26216163de.tar.xz /
ADD c0f659ec149eecbfc5a95ce8ab00ba00d2cf3cff91634dd631031f64b70a1afe.tar.xz /
ADD e9ad107f9aac24c52abd1543abb29eb693710d7e701510f6852bd35861522dcb.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

