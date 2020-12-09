FROM scratch

ADD 2d1a2cd33d6aaad44f694f2759433c03459db86163f0d0df408da0bb65943852.tar.xz /
ADD 378e7c33828fc4c4167505592b0ab31e5a933dbf63325132f97fa259a9029954.tar.xz /
ADD 7ae5e325acc9f3b82ee0be7e1fd7dd0d171d96e8a51b1e0b0ed19a35cf312725.tar.xz /
ADD a75783228a807e241b1d1c0e2d0b871dbe21a62775aaaf4d0e3fd6f91f7861ab.tar.xz /
ADD ba3edc14a143a43fb27fadc152d26872ae82165e3c6b2e7ec8a55eb8a26f3a76.tar.xz /
ADD cec72b72e49080dc2065523c08b8f35375757d85cbf264b0ca8ab64aae213c52.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

