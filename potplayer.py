import os
import sys
from urllib.parse import quote, unquote, urlencode

if __name__ == '__main__':
    url = sys.argv[1]
    url = unquote(url[8:len(url)])
    all_str="D:\软件\PotPlayer\PotPlayerMini64.exe " + url

    os.system("start D:\Program Files\DAUM\PotPlayer\potplayer.ahk " + url)