browser.runtime.onMessage.addListener(url => {
	let port = browser.runtime.connectNative("pwalinks");
	port.postMessage(url);
});

