from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

# Using WebDriver Manager to handle the driver installation
driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()))