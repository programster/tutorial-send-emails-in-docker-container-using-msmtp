Tutorial Codebase - Send Emails Using MSMTP
===========================================

A codebase for a tutorial on [how to send emails inside a Docker container using 
msmtp](https://blog.programster.org/send-emails-in-a-docker-container-using-msmtp), for applications 
like PHPBB that don't have native SMTP support and just call sendmail.

## Usage
Copy or rename the *.env.example* and *msmtprc.conf.example* example files to remove the *.example*
extension.

Go into those files and update all of the settings as appropriate to you. E.g. set the `TO_EMAIL`
in the *.env* file to one of your email addresses that you wish to be sent the test email.

The *msmtprc.conf* file is the main configuration file, and needs to be updated with the details
of your SMTP server. This has been left with an example configuration for if you were interfacing
with a self-hosted [mail-in-a-box server](https://mailinabox.email/). However, you may be using 
something like Gmail instead, for which 
[the example on archlinux.org](https://wiki.archlinux.org/title/msmtp) may help you for finding 
out Gmail's settings. E.g. port `465` instead of `587` etc.

Then build the Docker image by running `docker compose build`, and run it with `docker compose up`.

If all of your configuration settings were correct, you should recieve a test email to the 
`TO_EMAIL` you specified in your *.env* file.