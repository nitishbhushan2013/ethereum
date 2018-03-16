from = personal.listAccounts[0]
to = personal.listAccounts[1]
amount = web3.toWei(0.00001, 'ether');
nonce = 100;

txn = { 
    from :from,
    to : to,
    value : amount,
    nonce : nonce
}

addr =  personal.sendTransaction(txn, " "); // provide the correct password
console.log("address of the transaction :", addr);

