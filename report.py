import os
import smtplib
import mimetypes
import base64
from email.message import EmailMessage
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from googleapiclient.discovery import build

TOKEN_FILE = 'token.json'
CLIENT_SECRET_FILE = 'credentials.json'
SCOPES = ['https://www.googleapis.com/auth/gmail.readonly', 'https://www.googleapis.com/auth/gmail.send',
          'https://www.googleapis.com/auth/gmail.modify', 'https://www.googleapis.com/auth/gmail.settings.sharing']


def authenticate_gmail():
    creds = None
    if os.path.exists(TOKEN_FILE):
        creds = Credentials.from_authorized_user_file(TOKEN_FILE, SCOPES)
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            from google_auth_oauthlib.flow import InstalledAppFlow
            flow = InstalledAppFlow.from_client_secrets_file(CLIENT_SECRET_FILE, SCOPES)
            creds = flow.run_local_server(port=0)
        with open(TOKEN_FILE, 'w') as token:
            token.write(creds.to_json())
    return creds


def send_email_with_attachment(recipient_email, email_subject, email_body, attachment_path):
    creds = authenticate_gmail()
    service = build("gmail", "v1", credentials=creds)

    msg = EmailMessage()
    msg['From'] = "anil.kumar@dtskill.com"
    msg['To'] = recipient_email
    msg['Subject'] = email_subject
    msg.set_content(email_body)

    attachment_filename = os.path.basename(attachment_path)

    ctype, encoding = mimetypes.guess_type(attachment_path)
    if ctype is None or encoding is not None:
        ctype = 'application/octet-stream'
    maintype, subtype = ctype.split('/', 1)

    with open(attachment_path, "rb") as fp:
        msg.add_attachment(fp.read(), maintype=maintype, subtype=subtype, filename=attachment_filename)

    raw_message = base64.urlsafe_b64encode(msg.as_bytes()).decode()
    create_message = {'raw': raw_message}
    try:
        message = service.users().messages().send(userId="me", body=create_message).execute()
        print("Email sent successfully!")
    except Exception as e:
        print(f"Failed to send email: {e}")


if __name__ == "__main__":
    recipient = "ravikumar.a@dtskill.com"
    subject = "Test Email with Attachment"
    body = "Hi, this is automated mail with attachment. Please do not reply."
    attachment = r"C:\Users\ANIL KUMAR RAHUL\PycharmProjects\GenE_Automation\Testcases\Results\report.html"

    send_email_with_attachment(recipient, subject, body, attachment)
