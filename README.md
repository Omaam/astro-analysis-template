# Astro Analysis Template

天文学における高エネルギー解析環境のテンプレート。

[HEASoft](https://heasarc.gsfc.nasa.gov/docs/software/heasoft/)、
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


### Python script の実行

```shell
make python
```
で Python サービスを展開したコンテナにログインする。


### jupyterlab 開発環境

```shell
make jupyterlab
```
とすると、コンテナ内で JupyterLab が起動する。
ログでトークンを含めた、
`https://<ip address>:8888/lab?token=<token>`
にアクセスするようにログが出るので、ブラウザでこれを開くと
JupyterLab にアクセスできる。
