FROM scratch

ADD 0a034aab9904cd9aa14c7d52cc955e085cdf90c6d5734941e897b06b5e52d2e2.tar.xz /
ADD 14ab5c302bc1aeae42febe3c0ceffea8ebb6ce563de98f8fdbceabbfb34dc033.tar.xz /
ADD 19440a49e322466df7f662342d64bf4603a51a247617669f219f287daf5cc78a.tar.xz /
ADD 519a33f544e93942f0efea04c5193e5b2c6977139a645eb8925b5bb6605acdef.tar.xz /
ADD 8776ab256773a3f08547a09487fd48a4661d2e66c1cffcac880e116a13cbead0.tar.xz /
ADD bf09ca217d637723212788ab7d1a7554d158ded041af88f2cb884552f1454425.tar.xz /
ADD cd8c2e30d1a8765b6629263431f39f70217464d6adadac3bd4e6eaf854ebf5b8.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

