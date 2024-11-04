browser.runtime.onMessage.addListener(url => {
	let port = browser.runtime.connectNative("webapplinks");
	port.postMessage(url);
});

