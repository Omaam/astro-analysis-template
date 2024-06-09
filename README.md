# Astro Analysis Template

天文学における高エネルギー解析環境のテンプレート。

[HEASoft](https://heasarc.gsfc.nasa.gov/docs/software/heasoft/)、
[Python](https://www.python.org/)
の実行環境を構築する。


## Install

必要な Python パッケージを`requirements.txt` に記入する。

make でイメージのビルドからコンテナの作成までを行う。
```shell
make
```

### HEASoft 開発環境へのログイン

```shell
make heasoft
```
で HEASoft サービスを展開したコンテナにログインする。


### Python 開発環境へのログイン

```shell
make python
```
で Python サービスを展開したコンテナにログインする。


### jupyterlab 開発環境の起動

```shell
make jupyterlab
```
とすると、コンテナ内で JupyterLab が起動する。
ログでトークンを含めた、
`https://<ip address>:8888/lab?token=<token>`
にアクセスするようにログが出るので、ブラウザでこれを開くと
JupyterLab にアクセスできる。


## 例

ここでは matplotlib と numpy をインストールする場合の例を示す。

```shell
echo "\
matplotlib == 3.9.0
numpy == 1.26.4" \
>> requirements.txt
make
make heasoft
```
