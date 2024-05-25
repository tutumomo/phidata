#!/bin/bash

# ���}�s�����óX��GitHub�ܮw
open "https://github.com/tutumomo/phidata"
open "https://github.com/tutumomo/phidata-docs"

# ���ݤ@�q�ɶ��H�T�O�s�����[������
sleep 5

# ����git pull
git pull

# �ե�ac�}���]���]ac�O�@��Shell�}�����^
./ac.sh

# �w��Python�]
pip3 install -U phidata jupyter-ai ipywidgets ollama duckduckgo-search langchain-google-genai unstructured pyowm tools wikipedia yfinance sec-api tiktoken faiss-cpu python-dotenv langchain-community langchain-core openai arxiv

# �J���Χ�sGitHub�ܮw
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

echo "��s���� ~~"
