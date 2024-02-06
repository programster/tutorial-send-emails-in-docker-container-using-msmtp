FROM debian:12


# Prevent any issues that might arise from having to set timezones etc
ENV DEBIAN_FRONTEND=noninteractive


# Update packages
RUN apt-get update && apt-get dist-upgrade -y


# Install the msmtp package to act as email client, and msmtp-mta package in order to get the server to use it for
# calls to sendmail.
# Optionally installing mailutils and mutt so we can use the mail commands.
# Optionally installing cron so can leave the container running.
RUN apt-get install -y ca-certificates msmtp msmtp-mta mailutils mutt cron


# Copy the startup script into the container and execute it on startup.
COPY startup.sh /root/startup.sh
CMD ["/bin/bash", "/root/startup.sh"]
