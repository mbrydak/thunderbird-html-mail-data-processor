import fileinput
from multiprocessing.dummy import Pool as ThreadPool
from bs4 import BeautifulSoup
from os import walk, path
import pandas as pd

pool = ThreadPool(20)

htmls = []
for root, dirs, files in walk('./input-files'):
    for file in files:
        name, extension = path.splitext(file)
        if extension in ".html":
            htmls.append(f'{root}/{file}')

df = pd.DataFrame(columns=['from'])
data_list = []


def crawl_html(html_file):
    soup = BeautifulSoup(open(html_file), 'html.parser')
    data_list.append({
        'from': soup.find_all("table")

    })


results = pool.map(crawl_html, htmls)

print(df.append(data_list))

pool.close()
pool.join()
