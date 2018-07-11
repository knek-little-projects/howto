```bash
dpkg-reconfigure tzdata
dpkg-reconfigure locales

RUN sudo echo "America/New_York" > /etc/timezone
RUN sudo dpkg-reconfigure -f noninteractive tzdata
```
