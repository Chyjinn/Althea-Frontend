mp.events.add('js:SaveToken', (accid,token,expiration) => {
	mp.storage.data.account = String(accid);
	mp.storage.data.token = String(token);
	mp.storage.data.expiration = String(expiration);
	mp.storage.flush();
});


mp.events.add('js:LoadToken', () => {
	var account = mp.storage.data.account;
	var token = mp.storage.data.token;
	var expiration = mp.storage.data.expiration;
	if( account == null || token == null || expiration == null)
	{
		mp.events.callLocal("client:LoadToken", "0", "tokenerror", "0");
	}
	else
	{
		mp.events.callLocal("client:LoadToken", account, token, expiration);
	}
	
});