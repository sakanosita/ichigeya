# 学習内容
OpenZeppelinを使って、シンプルなERC20トークンをテストネット上に作ります。
参考サイト
- https://github.com/OpenZeppelin/openzeppelin-contracts
- https://qiita.com/sinsinpurin/items/e95f7e167b3116d29c68
- https://www.tdi.co.jp/miso/truffle-openzeppelin-blockchain-token

## 手順
```
openzeppelinのライブラリをインストールする
$ npm install

既存のビルドファイルを削除する
（筆者がビルドした環境でのcontract addressなどが書かれている）
$ rm build/contracts/*

コンパイル＆デプロイ
$ truffle migrate
```

## 動作確認
```
$ truffle console

truffle(development)> await myToken.balanceOf(accounts[0])

truffle(development)> await myToken.balanceOf(accounts[0]).then((BN) => BN.toString())
'10000000000000000000000'

truffle(development)> myToken.address

```
