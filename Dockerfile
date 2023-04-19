FROM telegraf
RUN apt-get update -y 
RUN apt-get install -y python3 python3-pip git

WORKDIR /opt
RUN git clone https://github.com/Ragin-LundF/telegraf_fritzbox_monitor.git

WORKDIR /opt/telegraf_fritzbox_monitor
RUN pip3 install -r requirements.txt
RUN ./install.sh
