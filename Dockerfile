FROM vbanthia/appium-ruby

ENV http_proxy=${HTTP_PROXY}
ENV https_proxy=${HTTPS_PROXY}

RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
RUN export JDK_HOME=$JAVA_HOME

RUN export ANDROID_SDK=$ANDROID_HOME

RUN gem install bundler

ADD Gemfile ./Gemfile
ADD Gemfile.lock ./Gemfile.lock
RUN bundle

CMD ["/bin/sh", "-l", "-c", "cd qe-automation && bundle exec rake single_run_acceptance[${EXECUTION_ENV},${APP_LANGUAGE},${PLATFORM_NAME},${PLATFORM_VERSION},${DEVICE_NAME},${APP_NAME},'','',${TAGS},${SAUCELAB_JOBNAME},${SAUCELAB_USER},${SAUCELAB_ACCESSKEY},${TEST_RAIL_FLAG},${TEST_RAIL_RUN_ID}]"]
