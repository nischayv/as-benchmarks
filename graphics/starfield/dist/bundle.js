!function(t){var e={};function r(n){if(e[n])return e[n].exports;var a=e[n]={i:n,l:!1,exports:{}};return t[n].call(a.exports,a,a.exports,r),a.l=!0,a.exports}r.m=t,r.c=e,r.d=function(t,e,n){r.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:n})},r.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},r.t=function(t,e){if(1&e&&(t=r(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var n=Object.create(null);if(r.r(n),Object.defineProperty(n,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var a in t)r.d(n,a,function(e){return t[e]}.bind(null,a));return n},r.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return r.d(e,"a",e),e},r.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},r.p="/",r(r.s=0)}([function(t,e,r){"use strict";r.r(e),r.d(e,"runStarfield",(function(){return g}));const n=document.getElementById("starfield"),a=n.getContext("2d"),o=document.getElementById("fps"),s=document.getElementById("selectedOption"),i=new class{constructor(){this.stars=[]}addStar(){if(this.stars.length<750){const t={x:0,y:0,vx:10*Math.random()-5,vy:10*Math.random()-5};this.stars.push(t)}}updateStars(){const t=this.stars.length;for(let e=0;e<t;e++){const t=this.stars[e];t.x=t.x+t.vx,t.y=t.y+t.vy,(t.x>400||t.x<-400)&&(t.x=0,t.y=0),t.color=Math.floor((Math.abs(t.x)+Math.abs(t.y))/5)}}getStar(t){const{x:e,y:r,color:n}=this.stars[t];return[e,r,n]}clear(){this.stars=[]}};let l,c,u,f,d,y=0,b=0,m=0,p=0;const h=()=>{s.value!==u&&(c&&(c.clear(),y=0),c="Javascript"===s.value?i:l.instance.exports,u=s.value),setTimeout(h,0),a.clearRect(0,0,n.width,n.height),y<750&&(c.addStar(),y++),c.updateStars();for(let t=0;t<y;t++){let e=0,r=0,n=0;"Javascript"===s.value?[e,r,n]=c.getStar(t):(c.setStar(t),e=d[0],r=d[1],n=d[2]),a.fillStyle=`rgb(${n},${n},${n})`,a.beginPath(),a.arc(400+e,400+r,Math.abs(r/200+t/300),0,2*Math.PI),a.fill()}(()=>{const t=performance.now();b+=1,m>=1e3?(o.innerHTML=Math.floor(1e3*b/m),b=0,m=0):m+=t-p,p=t})()},g=async()=>{await(async()=>{const t={env:{abort(t,e,r,n){console.error(`Abort called at ${e}:${r}:${n}`)},seed:()=>1e64*Math.random()}};try{const e=fetch("build/optimized.wasm");l="function"==typeof WebAssembly.instantiateStreaming?await WebAssembly.instantiateStreaming(e,t):await WebAssembly.instantiate(await(await e).arrayBuffer(),t),f=l.instance.exports.memory,d=new Float64Array(f.buffer)}catch(t){console.error("Can't instantiate WebAssembly module.\n",t)}})(),l&&h()};g()}]);
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly8vd2VicGFjay9ib290c3RyYXAiLCJ3ZWJwYWNrOi8vLy4vaW5kZXguanMiLCJ3ZWJwYWNrOi8vLy4vanMvaW5kZXguanMiXSwibmFtZXMiOlsiaW5zdGFsbGVkTW9kdWxlcyIsIl9fd2VicGFja19yZXF1aXJlX18iLCJtb2R1bGVJZCIsImV4cG9ydHMiLCJtb2R1bGUiLCJpIiwibCIsIm1vZHVsZXMiLCJjYWxsIiwibSIsImMiLCJkIiwibmFtZSIsImdldHRlciIsIm8iLCJPYmplY3QiLCJkZWZpbmVQcm9wZXJ0eSIsImVudW1lcmFibGUiLCJnZXQiLCJyIiwiU3ltYm9sIiwidG9TdHJpbmdUYWciLCJ2YWx1ZSIsInQiLCJtb2RlIiwiX19lc01vZHVsZSIsIm5zIiwiY3JlYXRlIiwia2V5IiwiYmluZCIsIm4iLCJvYmplY3QiLCJwcm9wZXJ0eSIsInByb3RvdHlwZSIsImhhc093blByb3BlcnR5IiwicCIsInMiLCJjYW52YXMiLCJkb2N1bWVudCIsImdldEVsZW1lbnRCeUlkIiwiY29udGV4dCIsImdldENvbnRleHQiLCJmcHNFbGVtZW50Iiwic3RhcmZpZWxkSnMiLCJ0aGlzIiwic3RhcnMiLCJsZW5ndGgiLCJzdGFyIiwieCIsInkiLCJ2eCIsIk1hdGgiLCJyYW5kb20iLCJ2eSIsInB1c2giLCJjb2xvciIsImZsb29yIiwiYWJzIiwid2FzbUluc3RhbmNlIiwic3RhcmZpZWxkIiwibGFzdE9wdGlvbiIsIm1lbW9yeSIsIndhc21CeXRlTWVtb3J5QXJyYXkiLCJzdGFyQ291bnQiLCJmcHMiLCJhY2NUaW1lIiwibGFzdFRpbWUiLCJhbmltYXRlIiwiY2xlYXIiLCJpbnN0YW5jZSIsInNldFRpbWVvdXQiLCJjbGVhclJlY3QiLCJ3aWR0aCIsImhlaWdodCIsImFkZFN0YXIiLCJ1cGRhdGVTdGFycyIsImdldFN0YXIiLCJzZXRTdGFyIiwiZmlsbFN0eWxlIiwiYmVnaW5QYXRoIiwiYXJjIiwiUEkiLCJmaWxsIiwibm93IiwicGVyZm9ybWFuY2UiLCJpbm5lckhUTUwiLCJ1cGRhdGVGUFMiLCJydW5TdGFyZmllbGQiLCJhc3luYyIsImltcG9ydHMiLCJlbnYiLCJfbXNnIiwiX2ZpbGUiLCJsaW5lIiwiY29sdW1uIiwiY29uc29sZSIsImVycm9yIiwic2VlZCIsInJlc3BvbnNlIiwiZmV0Y2giLCJXZWJBc3NlbWJseSIsImluc3RhbnRpYXRlU3RyZWFtaW5nIiwiaW5zdGFudGlhdGUiLCJhcnJheUJ1ZmZlciIsIkZsb2F0NjRBcnJheSIsImJ1ZmZlciIsImUiLCJmZXRjaFdhc20iXSwibWFwcGluZ3MiOiJhQUNFLElBQUlBLEVBQW1CLEdBR3ZCLFNBQVNDLEVBQW9CQyxHQUc1QixHQUFHRixFQUFpQkUsR0FDbkIsT0FBT0YsRUFBaUJFLEdBQVVDLFFBR25DLElBQUlDLEVBQVNKLEVBQWlCRSxHQUFZLENBQ3pDRyxFQUFHSCxFQUNISSxHQUFHLEVBQ0hILFFBQVMsSUFVVixPQU5BSSxFQUFRTCxHQUFVTSxLQUFLSixFQUFPRCxRQUFTQyxFQUFRQSxFQUFPRCxRQUFTRixHQUcvREcsRUFBT0UsR0FBSSxFQUdKRixFQUFPRCxRQUtmRixFQUFvQlEsRUFBSUYsRUFHeEJOLEVBQW9CUyxFQUFJVixFQUd4QkMsRUFBb0JVLEVBQUksU0FBU1IsRUFBU1MsRUFBTUMsR0FDM0NaLEVBQW9CYSxFQUFFWCxFQUFTUyxJQUNsQ0csT0FBT0MsZUFBZWIsRUFBU1MsRUFBTSxDQUFFSyxZQUFZLEVBQU1DLElBQUtMLEtBS2hFWixFQUFvQmtCLEVBQUksU0FBU2hCLEdBQ1gsb0JBQVhpQixRQUEwQkEsT0FBT0MsYUFDMUNOLE9BQU9DLGVBQWViLEVBQVNpQixPQUFPQyxZQUFhLENBQUVDLE1BQU8sV0FFN0RQLE9BQU9DLGVBQWViLEVBQVMsYUFBYyxDQUFFbUIsT0FBTyxLQVF2RHJCLEVBQW9Cc0IsRUFBSSxTQUFTRCxFQUFPRSxHQUV2QyxHQURVLEVBQVBBLElBQVVGLEVBQVFyQixFQUFvQnFCLElBQy9CLEVBQVBFLEVBQVUsT0FBT0YsRUFDcEIsR0FBVyxFQUFQ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Q3NELEVBQVVrQixRQUFReEUsR0FDbEIyQyxFQUFJYyxFQUFvQixHQUN4QmIsRUFBSWEsRUFBb0IsR0FDeEJQLEVBQVFPLEVBQW9CLElBSTlCdEIsRUFBUXNDLFVBQVksT0FBT3ZCLEtBQVNBLEtBQVNBLEtBQzdDZixFQUFRdUMsWUFHUnZDLEVBQVF3QyxJQUNOLElBQU1oQyxFQUNOLElBQU1DLEVBQ05FLEtBQUtNLElBQUlSLEVBQUksSUFBTTVDLEVBQUksS0FDdkIsRUFDQSxFQUFJOEMsS0FBSzhCLElBRVh6QyxFQUFRMEMsT0ExRE0sTUFDaEIsTUFBTUMsRUFBTUMsWUFBWUQsTUFDeEJuQixHQUFPLEVBQ0hDLEdBQVcsS0FDYnZCLEVBQVcyQyxVQUFZbEMsS0FBS0ssTUFBTSxJQUFPUSxFQUFNQyxHQUMvQ0QsRUFBTSxFQUNOQyxFQUFVLEdBRVZBLEdBQVdrQixFQUFNakIsRUFFbkJBLEVBQVdpQixHQW1EWEcsSUFHV0MsRUFBZUMsZUF4RlZBLFdBQ2hCLE1BQU1DLEVBQVUsQ0FDZEMsSUFBSyxDQUNILE1BQU1DLEVBQU1DLEVBQU9DLEVBQU1DLEdBQ3ZCQyxRQUFRQyxNQUFNLG1CQUFtQkosS0FBU0MsS0FBUUMsTUFFcERHLEtBQUksSUFBNEIsS0FBaEI5QyxLQUFLQyxXQUl6QixJQUNFLE1BQU04QyxFQUFXQyxNQUFNLHdCQUVyQnpDLEVBRDhDLG1CQUFyQzBDLFlBQVlDLDJCQUNBRCxZQUFZQyxxQkFBcUJILEVBQVVULFNBRTNDVyxZQUFZRSx3QkFBeUJKLEdBQVVLLGNBQWVkLEdBRXJGNUIsRUFBU0gsRUFBYVcsU0FBU2xFLFFBQVEwRCxPQUN2Q0MsRUFBc0IsSUFBSTBDLGFBQWEzQyxFQUFPNEMsUUFDOUMsTUFBT0MsR0FDUFgsUUFBUUMsTUFBTSwwQ0FBMkNVLEtBcUVyREMsR0FDRGpELEdBSUxTLEtBR0ZvQiIsImZpbGUiOiJidW5kbGUuanMiLCJzb3VyY2VzQ29udGVudCI6WyIgXHQvLyBUaGUgbW9kdWxlIGNhY2hlXG4gXHR2YXIgaW5zdGFsbGVkTW9kdWxlcyA9IHt9O1xuXG4gXHQvLyBUaGUgcmVxdWlyZSBmdW5jdGlvblxuIFx0ZnVuY3Rpb24gX193ZWJwYWNrX3JlcXVpcmVfXyhtb2R1bGVJZCkge1xuXG4gXHRcdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuIFx0XHRpZihpbnN0YWxsZWRNb2R1bGVzW21vZHVsZUlkXSkge1xuIFx0XHRcdHJldHVybiBpbnN0YWxsZWRNb2R1bGVzW21vZHVsZUlkXS5leHBvcnRzO1xuIFx0XHR9XG4gXHRcdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG4gXHRcdHZhciBtb2R1bGUgPSBpbnN0YWxsZWRNb2R1bGVzW21vZHVsZUlkXSA9IHtcbiBcdFx0XHRpOiBtb2R1bGVJZCxcbiBcdFx0XHRsOiBmYWxzZSxcbiBcdFx0XHRleHBvcnRzOiB7fVxuIFx0XHR9O1xuXG4gXHRcdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuIFx0XHRtb2R1bGVzW21vZHVsZUlkXS5jYWxsKG1vZHVsZS5leHBvcnRzLCBtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuIFx0XHQvLyBGbGFnIHRoZSBtb2R1bGUgYXMgbG9hZGVkXG4gXHRcdG1vZHVsZS5sID0gdHJ1ZTtcblxuIFx0XHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuIFx0XHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG4gXHR9XG5cblxuIFx0Ly8gZXhwb3NlIHRoZSBtb2R1bGVzIG9iamVjdCAoX193ZWJwYWNrX21vZHVsZXNfXylcbiBcdF9fd2VicGFja19yZXF1aXJlX18ubSA9IG1vZHVsZXM7XG5cbiBcdC8vIGV4cG9zZSB0aGUgbW9kdWxlIGNhY2hlXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLmMgPSBpbnN0YWxsZWRNb2R1bGVzO1xuXG4gXHQvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9uIGZvciBoYXJtb255IGV4cG9ydHNcbiBcdF9fd2VicGFja19yZXF1aXJlX18uZCA9IGZ1bmN0aW9uKGV4cG9ydHMsIG5hbWUsIGdldHRlcikge1xuIFx0XHRpZighX193ZWJwYWNrX3JlcXVpcmVfXy5vKGV4cG9ydHMsIG5hbWUpKSB7XG4gXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIG5hbWUsIHsgZW51bWVyYWJsZTogdHJ1ZSwgZ2V0OiBnZXR0ZXIgfSk7XG4gXHRcdH1cbiBcdH07XG5cbiBcdC8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbiBcdF9fd2VicGFja19yZXF1aXJlX18uciA9IGZ1bmN0aW9uKGV4cG9ydHMpIHtcbiBcdFx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG4gXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG4gXHRcdH1cbiBcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbiBcdH07XG5cbiBcdC8vIGNyZWF0ZSBhIGZha2UgbmFtZXNwYWNlIG9iamVjdFxuIFx0Ly8gbW9kZSAmIDE6IHZhbHVlIGlzIGEgbW9kdWxlIGlkLCByZXF1aXJlIGl0XG4gXHQvLyBtb2RlICYgMjogbWVyZ2UgYWxsIHByb3BlcnRpZXMgb2YgdmFsdWUgaW50byB0aGUgbnNcbiBcdC8vIG1vZGUgJiA0OiByZXR1cm4gdmFsdWUgd2hlbiBhbHJlYWR5IG5zIG9iamVjdFxuIFx0Ly8gbW9kZSAmIDh8MTogYmVoYXZlIGxpa2UgcmVxdWlyZVxuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy50ID0gZnVuY3Rpb24odmFsdWUsIG1vZGUpIHtcbiBcdFx0aWYobW9kZSAmIDEpIHZhbHVlID0gX193ZWJwYWNrX3JlcXVpcmVfXyh2YWx1ZSk7XG4gXHRcdGlmKG1vZGUgJiA4KSByZXR1cm4gdmFsdWU7XG4gXHRcdGlmKChtb2RlICYgNCkgJiYgdHlwZW9mIHZhbHVlID09PSAnb2JqZWN0JyAmJiB2YWx1ZSAmJiB2YWx1ZS5fX2VzTW9kdWxlKSByZXR1cm4gdmFsdWU7XG4gXHRcdHZhciBucyA9IE9iamVjdC5jcmVhdGUobnVsbCk7XG4gXHRcdF9fd2VicGFja19yZXF1aXJlX18ucihucyk7XG4gXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShucywgJ2RlZmF1bHQnLCB7IGVudW1lcmFibGU6IHRydWUsIHZhbHVlOiB2YWx1ZSB9KTtcbiBcdFx0aWYobW9kZSAmIDIgJiYgdHlwZW9mIHZhbHVlICE9ICdzdHJpbmcnKSBmb3IodmFyIGtleSBpbiB2YWx1ZSkgX193ZWJwYWNrX3JlcXVpcmVfXy5kKG5zLCBrZXksIGZ1bmN0aW9uKGtleSkgeyByZXR1cm4gdmFsdWVba2V5XTsgfS5iaW5kKG51bGwsIGtleSkpO1xuIFx0XHRyZXR1cm4gbnM7XG4gXHR9O1xuXG4gXHQvLyBnZXREZWZhdWx0RXhwb3J0IGZ1bmN0aW9uIGZvciBjb21wYXRpYmlsaXR5IHdpdGggbm9uLWhhcm1vbnkgbW9kdWxlc1xuIFx0X193ZWJwYWNrX3JlcXVpcmVfXy5uID0gZnVuY3Rpb24obW9kdWxlKSB7XG4gXHRcdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuIFx0XHRcdGZ1bmN0aW9uIGdldERlZmF1bHQoKSB7IHJldHVybiBtb2R1bGVbJ2RlZmF1bHQnXTsgfSA6XG4gXHRcdFx0ZnVuY3Rpb24gZ2V0TW9kdWxlRXhwb3J0cygpIHsgcmV0dXJuIG1vZHVsZTsgfTtcbiBcdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5kKGdldHRlciwgJ2EnLCBnZXR0ZXIpO1xuIFx0XHRyZXR1cm4gZ2V0dGVyO1xuIFx0fTtcblxuIFx0Ly8gT2JqZWN0LnByb3RvdHlwZS5oYXNPd25Qcm9wZXJ0eS5jYWxsXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSBmdW5jdGlvbihvYmplY3QsIHByb3BlcnR5KSB7IHJldHVybiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqZWN0LCBwcm9wZXJ0eSk7IH07XG5cbiBcdC8vIF9fd2VicGFja19wdWJsaWNfcGF0aF9fXG4gXHRfX3dlYnBhY2tfcmVxdWlyZV9fLnAgPSBcIi9cIjtcblxuXG4gXHQvLyBMb2FkIGVudHJ5IG1vZHVsZSBhbmQgcmV0dXJuIGV4cG9ydHNcbiBcdHJldHVybiBfX3dlYnBhY2tfcmVxdWlyZV9fKF9fd2VicGFja19yZXF1aXJlX18ucyA9IDApO1xuIiwiaW1wb3J0IHsgU3RhcmZpZWxkIH0gZnJvbSAnLi9qcydcblxuY29uc3QgY2FudmFzID0gZG9jdW1lbnQuZ2V0RWxlbWVudEJ5SWQoJ3N0YXJmaWVsZCcpXG5jb25zdCBjb250ZXh0ID0gY2FudmFzLmdldENvbnRleHQoJzJkJylcbmNvbnN0IGZwc0VsZW1lbnQgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgnZnBzJylcbmNvbnN0IG9wdGlvbiA9IGRvY3VtZW50LmdldEVsZW1lbnRCeUlkKCdzZWxlY3RlZE9wdGlvbicpXG5jb25zdCBzdGFyZmllbGRKcyA9IG5ldyBTdGFyZmllbGQoKVxubGV0IHdhc21JbnN0YW5jZVxubGV0IHN0YXJmaWVsZFxubGV0IGxhc3RPcHRpb25cbmxldCBtZW1vcnlcbmxldCB3YXNtQnl0ZU1lbW9yeUFycmF5XG5sZXQgc3RhckNvdW50ID0gMFxubGV0IGZwcyA9IDBcbmxldCBhY2NUaW1lID0gMFxubGV0IGxhc3RUaW1lID0gMFxuXG5jb25zdCBmZXRjaFdhc20gPSBhc3luYyAoKSA9PiB7XG4gIGNvbnN0IGltcG9ydHMgPSB7XG4gICAgZW52OiB7XG4gICAgICBhYm9ydChfbXNnLCBfZmlsZSwgbGluZSwgY29sdW1uKSB7XG4gICAgICAgIGNvbnNvbGUuZXJyb3IoYEFib3J0IGNhbGxlZCBhdCAke19maWxlfToke2xpbmV9OiR7Y29sdW1ufWApXG4gICAgICB9LFxuICAgICAgc2VlZCgpIHsgcmV0dXJuIE1hdGgucmFuZG9tKCkgKiAxZTY0IH1cbiAgICB9XG4gIH1cbiAgLy8gSW5zdGFudGlhdGUgb3VyIHdhc20gbW9kdWxlXG4gIHRyeSB7XG4gICAgY29uc3QgcmVzcG9uc2UgPSBmZXRjaCgnYnVpbGQvb3B0aW1pemVkLndhc20nKVxuICAgIGlmICh0eXBlb2YgV2ViQXNzZW1ibHkuaW5zdGFudGlhdGVTdHJlYW1pbmcgPT09ICdmdW5jdGlvbicpIHtcbiAgICAgIHdhc21JbnN0YW5jZSA9IGF3YWl0IFdlYkFzc2VtYmx5Lmluc3RhbnRpYXRlU3RyZWFtaW5nKHJlc3BvbnNlLCBpbXBvcnRzKVxuICAgIH0gZWxzZSB7XG4gICAgICB3YXNtSW5zdGFuY2UgPSBhd2FpdCBXZWJBc3NlbWJseS5pbnN0YW50aWF0ZShhd2FpdCAoYXdhaXQgcmVzcG9uc2UpLmFycmF5QnVmZmVyKCksIGltcG9ydHMpXG4gICAgfVxuICAgIG1lbW9yeSA9IHdhc21JbnN0YW5jZS5pbnN0YW5jZS5leHBvcnRzLm1lbW9yeVxuICAgIHdhc21CeXRlTWVtb3J5QXJyYXkgPSBuZXcgRmxvYXQ2NEFycmF5KG1lbW9yeS5idWZmZXIpXG4gIH0gY2F0Y2ggKGUpIHtcbiAgICBjb25zb2xlLmVycm9yKGBDYW4ndCBpbnN0YW50aWF0ZSBXZWJBc3NlbWJseSBtb2R1bGUuXFxuYCwgZSlcbiAgfVxufVxuXG5jb25zdCB1cGRhdGVGUFMgPSAoKSA9PiB7XG4gIGNvbnN0IG5vdyA9IHBlcmZvcm1hbmNlLm5vdygpXG4gIGZwcyArPSAxXG4gIGlmIChhY2NUaW1lID49IDEwMDApIHtcbiAgICBmcHNFbGVtZW50LmlubmVySFRNTCA9IE1hdGguZmxvb3IoMTAwMCAqIGZwcyAvIGFjY1RpbWUpXG4gICAgZnBzID0gMFxuICAgIGFjY1RpbWUgPSAwXG4gIH0gZWxzZSB7XG4gICAgYWNjVGltZSArPSBub3cgLSBsYXN0VGltZVxuICB9XG4gIGxhc3RUaW1lID0gbm93XG59XG5cbmNvbnN0IGFuaW1hdGUgPSAoKSA9PiB7XG4gIGlmIChvcHRpb24udmFsdWUgIT09IGxhc3RPcHRpb24pIHtcbiAgICBpZiAoc3RhcmZpZWxkKSB7XG4gICAgICBzdGFyZmllbGQuY2xlYXIoKVxuICAgICAgc3RhckNvdW50ID0gMFxuICAgIH1cbiAgICBzdGFyZmllbGQgPSBvcHRpb24udmFsdWUgPT09ICdKYXZhc2NyaXB0JyA/IHN0YXJmaWVsZEpzIDogd2FzbUluc3RhbmNlLmluc3RhbmNlLmV4cG9ydHNcbiAgICBsYXN0T3B0aW9uID0gb3B0aW9uLnZhbHVlXG4gIH1cblxuICBzZXRUaW1lb3V0KGFuaW1hdGUsIDApXG5cbiAgY29udGV4dC5jbGVhclJlY3QoMCwgMCwgY2FudmFzLndpZHRoLCBjYW52YXMuaGVpZ2h0KSAvLyBjbGVhciB0aGUgZnJhbWVcblxuICBpZiAoc3RhckNvdW50IDwgNzUwKSB7XG4gICAgc3RhcmZpZWxkLmFkZFN0YXIoKVxuICAgIHN0YXJDb3VudCsrXG4gIH1cbiAgc3RhcmZpZWxkLnVwZGF0ZVN0YXJzKClcblxuICBmb3IgKGxldCBpID0gMDsgaSA8IHN0YXJDb3VudDsgaSsrKSB7XG4gICAgbGV0IHggPSAwXG4gICAgbGV0IHkgPSAwXG4gICAgbGV0IGNvbG9yID0gMFxuICAgIGlmIChvcHRpb24udmFsdWUgPT09ICdKYXZhc2NyaXB0Jykge1xuICAgICAgW3gsIHksIGNvbG9yXSA9IHN0YXJmaWVsZC5nZXRTdGFyKGkpXG4gICAgfSBlbHNlIHtcbiAgICAgIHN0YXJmaWVsZC5zZXRTdGFyKGkpXG4gICAgICB4ID0gd2FzbUJ5dGVNZW1vcnlBcnJheVswXVxuICAgICAgeSA9IHdhc21CeXRlTWVtb3J5QXJyYXlbMV1cbiAgICAgIGNvbG9yID0gd2FzbUJ5dGVNZW1vcnlBcnJheVsyXVxuICAgIH1cblxuICAgIC8vIHVzZSB0aGUgY29sb3IgdmFsdWUgZm9yIHRoZSBSLCBHIGFuZCBCIGNvbXBvbmVudFxuICAgIGNvbnRleHQuZmlsbFN0eWxlID0gYHJnYigke2NvbG9yfSwke2NvbG9yfSwke2NvbG9yfSlgXG4gICAgY29udGV4dC5iZWdpblBhdGgoKVxuXG4gICAgLy8gZHJhdyBhIGNpcmNsZVxuICAgIGNvbnRleHQuYXJjKFxuICAgICAgNDAwICsgeCxcbiAgICAgIDQwMCArIHksXG4gICAgICBNYXRoLmFicyh5IC8gMjAwICsgaSAvIDMwMCksXG4gICAgICAwLFxuICAgICAgMiAqIE1hdGguUElcbiAgICApXG4gICAgY29udGV4dC5maWxsKClcbiAgfVxuXG4gIHVwZGF0ZUZQUygpXG59XG5cbmV4cG9ydCBjb25zdCBydW5TdGFyZmllbGQgPSBhc3luYyAoKSA9PiB7XG4gIGF3YWl0IGZldGNoV2FzbSgpXG4gIGlmICghd2FzbUluc3RhbmNlKSB7XG4gICAgcmV0dXJuXG4gIH1cblxuICBhbmltYXRlKClcbn1cblxucnVuU3RhcmZpZWxkKClcbiIsImV4cG9ydCBjbGFzcyBTdGFyZmllbGQge1xuICBjb25zdHJ1Y3RvcigpIHtcbiAgICB0aGlzLnN0YXJzID0gW11cbiAgfVxuXG4gIGFkZFN0YXIoKSB7XG4gICAgaWYgKHRoaXMuc3RhcnMubGVuZ3RoIDwgNzUwKSB7XG4gICAgICAvLyBjcmVhdGUgYSBuZXcgc3RhciBpbiB0aGUgbWlkZGxlIHdpdGggcmFuZG9tIHZlbG9jaXR5XG4gICAgICBjb25zdCBzdGFyID0ge1xuICAgICAgICB4OiAwLFxuICAgICAgICB5OiAwLFxuICAgICAgICB2eDogLTUgKyBNYXRoLnJhbmRvbSgpICogMTAsXG4gICAgICAgIHZ5OiAtNSArIE1hdGgucmFuZG9tKCkgKiAxMFxuICAgICAgfVxuICAgICAgdGhpcy5zdGFycy5wdXNoKHN0YXIpIC8vIGFkZCB0aGUgc3RhciB0byB0aGUgYXJyYXlcbiAgICB9XG4gIH1cblxuICB1cGRhdGVTdGFycygpIHtcbiAgICBjb25zdCBsZW5ndGggPSB0aGlzLnN0YXJzLmxlbmd0aFxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgbGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IHN0YXIgPSB0aGlzLnN0YXJzW2ldXG4gICAgICBzdGFyLnggPSBzdGFyLnggKyBzdGFyLnZ4IC8vIGFkZCB0aGUgdmVsb2NpdHkgdG8gdGhlIGN1cnJlbnQgcG9zaXRpb25cbiAgICAgIHN0YXIueSA9IHN0YXIueSArIHN0YXIudnkgLy8gaW4gYm90aCBheGxlc1xuICAgICAgaWYgKHN0YXIueCA+IDQwMCB8fCBzdGFyLnggPCAtNDAwKSB7XG4gICAgICAgIC8vIGlmIHRoZSBzdGFyIGlzIG91dCBvZiBib3VuZHMgcHV0IGl0IGJhY2sgaW4gdGhlIGNlbnRlclxuICAgICAgICBzdGFyLnggPSAwXG4gICAgICAgIHN0YXIueSA9IDBcbiAgICAgIH1cblxuICAgICAgLy8gc2V0IGNvbG9yXG4gICAgICBzdGFyLmNvbG9yID0gTWF0aC5mbG9vcigoTWF0aC5hYnMoc3Rhci54KSArIE1hdGguYWJzKHN0YXIueSkpIC8gNSlcbiAgICB9XG4gIH1cblxuICBnZXRTdGFyKGkpIHtcbiAgICBjb25zdCB7IHgsIHksIGNvbG9yIH0gPSB0aGlzLnN0YXJzW2ldXG4gICAgcmV0dXJuIFt4LCB5LCBjb2xvcl1cbiAgfVxuXG4gIGNsZWFyKCkge1xuICAgIHRoaXMuc3RhcnMgPSBbXVxuICB9XG59XG4iXSwic291cmNlUm9vdCI6IiJ9