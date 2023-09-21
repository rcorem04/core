FROM ubuntu:latest
RUN apt update && apt install tmate -y
CMD ["tmate", "-F"]
