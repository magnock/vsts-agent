from 	consultent/azure-pipelines-vsts-agent:latest

RUN apt-get update && apt-get install -yq \
    firefox-esr=52.6.0esr-1~deb9u1 \
    chromium=62.0.3202.89-1~deb9u1 \
    xvfb=2:1.19.2-1+deb9u2 \
    xsel=1.2.0-2+b1
    
# xvfb - X server display
ADD xvfb-chromium /usr/bin/xvfb-chromium
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome \
    && chmod 777 /usr/bin/xvfb-chromium
