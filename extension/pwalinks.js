const isExternalURL = (url) => new URL(url).origin !== location.origin;

document.addEventListener("click", event => {
	const a = event.target.tagName === "A" ? event.target : event.target.closest("a");
	if (a && a.href && isExternalURL(a.href)) {
		event.preventDefault();
		event.stopPropagation();
		event.stopImmediatePropagation();
		browser.runtime.sendMessage(a.href);
	}
}, { capture: true });
