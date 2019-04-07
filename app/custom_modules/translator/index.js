'use strict';

var path = require('path');

function Translator() {
	var langs = {
		ko: 'ko'
	};
	var lang = window.navigator.userLanguage || window.navigator.language;
	lang = langs[lang];
	if(lang == undefined)
		lang = 'en';
	this.lang = lang;

	var Localize = require('../localize');
	var loc = new Localize(__dirname);
	this.loc = loc;

	// force set language and locale to en
	this.lang = 'en'; 

	loc.setLocale(lang);
	loc.throwOnMissingTranslation(false);
}

Translator.prototype.getLanguage = function() {
	return this.lang;
};

Translator.prototype.translate = function(str) {
	// if(this.loc) {
	// 	return this.loc.translate(str);
	// }
	
	// don't translate
	return str;
};

module.exports = new Translator();