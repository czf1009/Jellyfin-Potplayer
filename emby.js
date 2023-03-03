// ==UserScript==
// @name         Emby-PotPlayer本地播放的最佳方式
// @description  emby web调用potplayer播放本地的视频，纯本地播放，不走网络流媒体
// @version      1.03
// @grant        none
// @include      http*://*/web/*
// @author       zhanaa
// @namespace    https://greasyfork.org/users/753082
// ==/UserScript==
(async function() {
    'use strict';
    while (!window.require || !window.ConnectionManager) await new Promise(resolve => setTimeout(resolve, 500));
    window.require(['pluginManager'], (pluginManager) => pluginManager.register(new EmbyPot()));
})();
class EmbyPot{
    constructor(){
        this.name = 'Pot Player'; this.type = 'mediaplayer'; this.id = 'potplayer';
        for (var cc of ['currentTime','volume', 'currentSrc', 'isMuted', 'paused']) this[cc] = function(){};
    }
    async getDeviceProfile(a,b){return null};
    canPlayItem(){return true};
    canPlayMediaType(a){return (a || '').toLowerCase() === 'video'};
    async stop() {}
    async play(a,b){window.location.href = `potplayer://${a.mediaSource.Path.replace('/media', 'H:/')}`};
 };