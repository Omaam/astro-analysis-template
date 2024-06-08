# Astro Analysis Template

天文学における高エネルギー解析環境のテンプレート。

[HEASoft](https://heasarc.gsfc.nasa.gov/docs/software/heasoft/)、
[JupyterLab](https://jupyter.org/)、
[Python](https://www.python.org/)
の実行環境を構築する。


## Install

必要な `python` ハッケージを`requirements.txt` に記入する。
```shell
echo "matplotlib\nnumpy\npandas" >> requirements.txt
```

make でイメージのビルドからコンテナの作成までを行う。
```shell
make
```

### HEASoft の開発環境

```shell
make heasoft
```
で HEASoft サービスを展開したコンテナにログインする。


### Python の開発環境

```shell
make python
```
で Python サービスを展開したコンテナにログインする。


### jupyterlab 環境

ブラウザで
```
https://<ip address>:8888/lab?token=<token>
```
でJupyterLab サービスを展開したコンテナにログインする。ただし、 `<token>` は `make logs`における `jupyterlab` のログメッセージから取得する。
