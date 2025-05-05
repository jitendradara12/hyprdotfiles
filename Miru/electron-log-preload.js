
      try {
        (function i({contextBridge:e,ipcRenderer:t}){if(!t)return;t.on("__ELECTRON_LOG_IPC__",((e,t)=>{window.postMessage({cmd:"message",...t})})),t.invoke("__ELECTRON_LOG__",{cmd:"getOptions"}).catch((e=>console.error(new Error(`electron-log isn't initialized in the main process. Please call log.initialize() before. ${e.message}`))));const a={sendToMain(e){try{t.send("__ELECTRON_LOG__",e)}catch(a){console.error("electronLog.sendToMain ",a,"data:",e),t.send("__ELECTRON_LOG__",{cmd:"errorHandler",error:{message:a?.message,stack:a?.stack},errorName:"sendToMain"})}},log(...e){a.sendToMain({data:e,level:"info"})}};for(const e of["error","warn","info","verbose","debug","silly"])a[e]=(...t)=>a.sendToMain({data:t,level:e});if(e&&process.contextIsolated)try{e.exposeInMainWorld("__electronLog",a)}catch{}"object"==typeof window?window.__electronLog=a:__electronLog=a})(require('electron'));
      } catch(e) {
        console.error(e);
      }
    