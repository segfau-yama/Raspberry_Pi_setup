# Raspberry_Pi_setup
研究で利用するための共用リポジトリ
## OSのインストール方法
1. OSをmicro SDリーダーへインストールする。=>
[インストール方法](https://qiita.com/tksnkym/items/31a237e27cbc51790cdd)
2. Raspberry Piのmicro SDスロットにSDカードを差し込み
![sdカード](sdcard.jpg)
## プロキシの設定方法
1. ターミナルで
```wget https://github.com/segfau-yama/Raspberry_Pi_setup/blob/master/set_proxy.sh```
を実行し[プロキシ設定用ファイル](set_proxy.sh)をダウンロードする
![ターミナル画面](raspberrypi2.png)
2. プロキシ下で行う場合は
```wget https://github.com/segfau-yama/Raspberry_Pi_setup/blob/master/set_proxy.sh -e use_proxy=yes -e http_proxy=プロキシサーバー名```
を実行
3. ターミナルで```source set_proxy.sh```を実行し学籍番号(s???????)と統合認証パスワードを入力
![ターミナル画面](raspberrypi1.png)
4. ```printenv http_proxy```で確認可能

プロキシ設定はターミナルを閉じると消えてしまうため家でRaspberry Piを利用する以外は
初めに```source set_proxy.sh```を実行しなければならないので注意

## python3でのadafruit TCS34725ライブラリのインストール方法
1. https://qiita.com/tkarube/items/31f503f55e30d9c3abd6 の例にならってcircuitpythonをインストール

2. ```sudo pip3 install adafruit-circuitpython-tcs34725``` を実行

3. ```cd``` を実行

4. ```git clone https://github.com/adafruit/Adafruit_CircuitPython_TCS34725.git```を実行する

5. ```cd Adafruit_CircuitPython_TCS34725/examples```を実行

6. ```python3 tcs34725_simpletest.py```を実行

## その他
