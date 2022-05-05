from multiprocessing.dummy import Pool as ThreadPool 
from bs4 import BeautifulSoup
from os import walk

pool = ThreadPool(20)

htmls = []
for root, dirs, files in walk('./input-files/'):
  for file in files:
    if r'.*\.html'.match(file):
      htmls.append(file)

df = pd.DataFrame(columns=['date', 'title', 'author', 'source', 'wordcount'])
data_list = []

def crawl_html(html_file):
  soup = BeautifulSoup(open(html_file), 'html.parser')
  data_list.append({
    
  })

results = pool.map(crawl_html, htmls)

print(df.append(data_list))