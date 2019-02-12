curl -s https://api.github.com/repos/yui/yuicompressor/releases/latest \
| grep "browser_download_url.*zip" | cut -d : -f 2,3 | tr -d '"' | wget -qi -