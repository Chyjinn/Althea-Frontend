mp.events.add('js:saveToken', (token) => {
	mp.storage.data.token = token;
});


mp.events.add('js:loadToken', () => {
	var token = mp.storage.data.token;
	mp.events.callLocal("client:LoadToken", token);
});