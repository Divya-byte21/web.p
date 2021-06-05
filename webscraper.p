
"""
Web Scraping - Scrap Images
"""

# importing required libraries
import requests
from bs4 import BeautifulSoup

# target URL
url = "https://www.goibibo.com/hotels/hotels-in-shimla-ct/"

headers = {
    'User-Agent': "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36"
    }

response = requests.request("GET", url, headers=headers)

data = BeautifulSoup(response.text, 'html.parser')

# find all with the image tag
images = data.find_all('img', src=True)

print('Number of Images: ', len(images))

for image in images:
    print(image)
