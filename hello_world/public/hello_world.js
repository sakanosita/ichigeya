var abi = [{
    "constant": true,
    "inputs": [],
    "name": "get",
    "outputs": [
      {
        "name": "",
        "type": "string"
      }
    ],
    "payable": false,
    "stateMutability": "pure",
    "type": "function"
  }];

var address = "0x5B0A7974Aeab510BB344e7f27e607841b4EC4C9f"; // コントラクトアドレス
window.onload = function() {
  const web3 = new Web3(Web3.givenProvider || "ws://localhost:7545");

  var contract = new web3.eth.Contract(abi, address);
  contract.methods.get().call(function(err,res){
    document.getElementById("contract_result").textContent = res;
    console.log(res);
  })
}
