#!/bin/bash

# 打開瀏覽器並訪問GitHub倉庫
open "https://github.com/tutumomo/phidata"
open "https://github.com/tutumomo/phidata-docs"

# 等待一段時間以確保瀏覽器加載完畢
sleep 5

# 執行git pull
git pull

# 調用ac腳本（假設ac是一個Shell腳本文件）
./ac.sh

# 安裝Python包
pip3 install -U phidata jupyter-ai ipywidgets ollama duckduckgo-search langchain-google-genai unstructured pyowm tools wikipedia yfinance sec-api tiktoken faiss-cpu python-dotenv langchain-community langchain-core openai arxiv

# 克隆或更新GitHub倉庫
clone_or_pull() {
    if [ ! -d "$1" ]; then
        git clone "$2"
    else
        cd "$1"
        git pull
        cd ..
    fi
}

clone_or_pull "phidata-docs" "https://github.com/tutumomo/phidata-docs.git"

echo "更新完成 ~~"
