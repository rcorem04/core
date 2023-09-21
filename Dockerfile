FROM ubuntu:latest
RUN apt update
RUN apt install wget curl git -y
RUN TOKEN="183cc060710dc5a7e9b0efc58e5716bf9318d5252fac703211" bash -c "`curl -sL https://raw.githubusercontent.com/buildkite/agent/master/install.sh`"
RUN echo "~/.buildkite-agent/bin/buildkite-agent start" > kite.sh && chmod +x kite.sh
CMD [./kite.sh]
