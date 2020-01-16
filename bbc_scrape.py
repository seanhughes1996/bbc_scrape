from bs4 import BeautifulSoup as bs

import requests

url = r'https://www.bbc.co.uk/news'
req = requests.get(url)
soup = bs(req.text, 'html.parser')

title = soup.title.string
print(title)