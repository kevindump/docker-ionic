FROM beevelop/cordova

ENV IONIC_VERSION 6.19.0

#ENV IONIC_VERSION 6.20.9
#ENV IONIC_VERSION 7.1.1

RUN apt-get update 
RUN apt-get install -y git bzip2 openssh-client && \
    npm install -g --unsafe-perm @ionic/cli@${IONIC_VERSION} && \
    ionic --version 
    
#RUN cd /opt/android/build-tools/33.0.1/
#RUN cp d8 dx
#RUN cd /opt/android/build-tools/33.0.1/lib
#RUN cp d8.jar dx.jar
#RUN npm install -g cordova
#RUN npm install -g jquery
#RUN npm install -g ajv
#RUN npm install -g @ionic/angular-toolkit
#RUN npm install -g @ionic/cordova-builders
#RUN npm install -g @angular-devkit/build-angular 
#RUN npm install -g rxjs
#RUN npm install -g zone.js

#RUN npm install -g @angular/cli@12.0.5
#RUN npm install -g @angular/compiler-cli@12.0.5
#RUN npm install -g @angular/core@12.0.5
#RUN npm install -g @angular/common@12.0.5

#RUN npm install -g @ionic-native/core
#RUN ionic cordova plugin add cordova-plugin-bluetooth-serial
#RUN npm install -g @ionic-native/bluetooth-serial
#RUN npm install -g esc-pos-encoder-ionic --save

#RUN cd /tmp 
#RUN ionic start myNewProject blank --type=ionic-angular --capacitor 
#RUN cd myNewProject 
#RUN ionic build 
#RUN ionic capacitor build android --no-open 
#RUN rm -rf /tmp/myNewProject 
RUN rm -rf /var/lib/apt/lists/* && apt-get clean
