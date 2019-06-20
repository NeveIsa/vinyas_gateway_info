# using SendGrid's Python Library
# https://github.com/sendgrid/sendgrid-python
import os
from sendgrid import SendGridAPIClient
from sendgrid.helpers.mail import Mail

def notify(emailID):
    message = Mail(
        from_email='vinyas-automan@rbccps.org',
        to_emails= emailID,
        subject='GATEWAYS-DOWN: ' + open('gwDown.txt').read(),
        html_content='<strong>GATEWAYS ARE DOWN !!!</strong>')
    try:
        sg = SendGridAPIClient(os.environ.get('SENDGRID_API_KEY'))
        response = sg.send(message)
        print(response.status_code)
        print(response.body)
        print(response.headers)
    except Exception as e:
        print(e.message)



notify("smpdmohanty@gmail.com")
notify("raghunath@rbccps.org")
