import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email import encoders
import os
import zipfile

# Function to zip files
def zip_files(file_paths, output_zip):
    with zipfile.ZipFile(output_zip, 'w') as zipF:
        for file in file_paths:
            zipF.write(file, os.path.basename(file))
    print(f"Files zipped successfully into {output_zip}")

# Function to send an email with an attachment
def send_email_with_attachment(subject, body, to_address, from_address, smtp_server, smtp_port, smtp_user, smtp_password, attachment_path=None):
    # Create a multipart message
    msg = MIMEMultipart()
    msg['From'] = from_address
    msg['To'] = to_address
    msg['Subject'] = subject

    # Attach the plain text body of the email
    msg.attach(MIMEText(body, 'plain'))

    # Attach the file
    if attachment_path:
        attachment_name = os.path.basename(attachment_path)
        with open(attachment_path, "rb") as attachment:
            mime_base = MIMEBase('application', 'octet-stream')
            mime_base.set_payload(attachment.read())
            encoders.encode_base64(mime_base)
            mime_base.add_header('Content-Disposition', f"attachment; filename= {attachment_name}")
            msg.attach(mime_base)

    # Set up the SMTP server and send the email
    with smtplib.SMTP_SSL(smtp_server, smtp_port) as server:  # Using SSL for port 465
        server.login(smtp_user, smtp_password)
        server.sendmail(from_address, to_address, msg.as_string())
        print("Email sent successfully.")

# Main code to zip files and send the email
if __name__ == "__main__":
    # Step 1: Define the files to zip and the output zip file
    files_to_zip = [r"C:\Users\ANIL KUMAR RAHUL\PycharmProjects\GenE Automation\Testcases\LOGIN_PAGE_TEST\log.html",
                    r"C:\Users\ANIL KUMAR RAHUL\PycharmProjects\GenE Automation\Testcases\LOGIN_PAGE_TEST\output.xml",
                    r"C:\Users\ANIL KUMAR RAHUL\PycharmProjects\GenE Automation\Testcases\LOGIN_PAGE_TEST\report.html"]
    output_zip_file = "output.zip"  # Name of the output zip file

    # Zip the files
    zip_files(files_to_zip, output_zip_file)

    # Step 2: Define email details
    subject = "Automation Report"
    body = "Please find attached the latest automation report."
    to_address = "anil.kumar@dtskill.com"
    from_address = "anil.kumar@dtskill.com"
    smtp_server = "smtp.gmail.com"
    smtp_port = 465  # Port 465 is used for SSL
    smtp_user = "anil.kumar@dtskill.com"
    smtp_password = "uayczzrzbewhpzin"  # Use app password if 2FA is enabled on your account
    attachment_path = output_zip_file  # Attach the zipped file

    # Send the email with the attachment
    send_email_with_attachment(subject, body, to_address, from_address, smtp_server, smtp_port, smtp_user, smtp_password, attachment_path)
