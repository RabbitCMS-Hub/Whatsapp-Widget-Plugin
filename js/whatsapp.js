if($('#mwb_whatsapp')[0]){
  let btn_text = $('#mwb_whatsapp').attr('button-title');
  let pre_msg  = $('#mwb_whatsapp').attr('description');
  let welcome_msg  = $('#mwb_whatsapp').attr('welcome-message');
  let mt_name = $('#mwb_whatsapp').attr('name');
  let phonenmb = $('#mwb_whatsapp').attr('number');
  let position = $('#mwb_whatsapp').attr('position');
  let timing = $('#mwb_whatsapp').attr('timing-text');
  let type_msg = $('#mwb_whatsapp').attr('type-msg');

	var mwb_whatsapp=function(){
    "use strict";function t(){}function e(t){return t()}function a(){return Object.create(null)}function n(t){t.forEach(e)}function o(t){return"function"==typeof t}function i(t,e){return t!=t?e==e:t!==e||t&&"object"==typeof t||"function"==typeof t}function r(t,e){t.appendChild(e)}function s(t,e,a){t.insertBefore(e,a||null)}function p(t){t.parentNode.removeChild(t)}function c(t){return document.createElement(t)}function l(t){return document.createElementNS("http://www.w3.org/2000/svg",t)}function d(t){return document.createTextNode(t)}function h(){return d(" ")}function g(t,e,a,n){return t.addEventListener(e,a,n),()=>t.removeEventListener(e,a,n)}function u(t,e,a){null==a?t.removeAttribute(e):t.getAttribute(e)!==a&&t.setAttribute(e,a)}function f(t,e){e=""+e,t.data!==e&&(t.data=e)}function b(t,e){(null!=e||t.value)&&(t.value=e)}function m(t,e,a,n){t.style.setProperty(e,a,n?"important":"")}let x;function w(t){x=t}const v=[],A=[],y=[],k=[],$=Promise.resolve();let z=!1;function M(t){y.push(t)}function C(){const t=new Set;do{for(;v.length;){const t=v.shift();w(t),S(t.$$)}for(;A.length;)A.pop()();for(let e=0;e<y.length;e+=1){const a=y[e];t.has(a)||(a(),t.add(a))}y.length=0}while(v.length);for(;k.length;)k.pop()();z=!1}function S(t){if(null!==t.fragment){t.update(),n(t.before_update);const e=t.dirty;t.dirty=[-1],t.fragment&&t.fragment.p(t.ctx,e),t.after_update.forEach(M)}}const E=new Set;function B(t,e){-1===t.$$.dirty[0]&&(v.push(t),z||(z=!0,$.then(C)),t.$$.dirty.fill(0)),t.$$.dirty[e/31|0]|=1<<e%31}function D(i,r,s,p,c,l,d=[-1]){const h=x;w(i);const g=r.props||{},u=i.$$={fragment:null,ctx:null,props:l,update:t,not_equal:c,bound:a(),on_mount:[],on_destroy:[],before_update:[],after_update:[],context:new Map(h?h.$$.context:[]),callbacks:a(),dirty:d};let f=!1;var b,m,v;u.ctx=s?s(i,g,(t,e,a=e)=>(u.ctx&&c(u.ctx[t],u.ctx[t]=a)&&(u.bound[t]&&u.bound[t](a),f&&B(i,t)),e)):[],u.update(),f=!0,n(u.before_update),u.fragment=!!p&&p(u.ctx),r.target&&(r.hydrate?u.fragment&&u.fragment.l((v=r.target,Array.from(v.childNodes))):u.fragment&&u.fragment.c(),r.intro&&((b=i.$$.fragment)&&b.i&&(E.delete(b),b.i(m))),function(t,a,i){const{fragment:r,on_mount:s,on_destroy:p,after_update:c}=t.$$;r&&r.m(a,i),M(()=>{const a=s.map(e).filter(o);p?p.push(...a):n(a),t.$$.on_mount=[]}),c.forEach(M)}(i,r.target,r.anchor),C()),w(h)}let L;function T(e){let a,n,o,i;return{c(){a=l("svg"),n=l("path"),o=l("g"),i=l("path"),u(n,"fill","#DFE5E7"),u(n,"d","M106.251.5C164.653.5 212 47.846 212 106.25S164.653 212 106.25 212C47.846 212 .5 164.654.5 106.25S47.846.5 106.251.5z"),u(i,"d","M173.561 171.615a62.767 62.767 0 0 0-2.065-2.955 67.7 67.7 0 0 0-2.608-3.299 70.112 70.112 0 0 0-3.184-3.527 71.097 71.097 0 0 0-5.924-5.47 72.458 72.458 0 0 0-10.204-7.026 75.2 75.2 0 0 0-5.98-3.055c-.062-.028-.118-.059-.18-.087-9.792-4.44-22.106-7.529-37.416-7.529s-27.624 3.089-37.416 7.529c-.338.153-.653.318-.985.474a75.37 75.37 0 0 0-6.229 3.298 72.589 72.589 0 0 0-9.15 6.395 71.243 71.243 0 0 0-5.924 5.47 70.064 70.064 0 0 0-3.184 3.527 67.142 67.142 0 0 0-2.609 3.299 63.292 63.292 0 0 0-2.065 2.955 56.33 56.33 0 0 0-1.447 2.324c-.033.056-.073.119-.104.174a47.92 47.92 0 0 0-1.07 1.926c-.559 1.068-.818 1.678-.818 1.678v.398c18.285 17.927 43.322 28.985 70.945 28.985 27.678 0 52.761-11.103 71.055-29.095v-.289s-.619-1.45-1.992-3.778a58.346 58.346 0 0 0-1.446-2.322zM106.002 125.5c2.645 0 5.212-.253 7.68-.737a38.272 38.272 0 0 0 3.624-.896 37.124 37.124 0 0 0 5.12-1.958 36.307 36.307 0 0 0 6.15-3.67 35.923 35.923 0 0 0 9.489-10.48 36.558 36.558 0 0 0 2.422-4.84 37.051 37.051 0 0 0 1.716-5.25c.299-1.208.542-2.443.725-3.701.275-1.887.417-3.827.417-5.811s-.142-3.925-.417-5.811a38.734 38.734 0 0 0-1.215-5.494 36.68 36.68 0 0 0-3.648-8.298 35.923 35.923 0 0 0-9.489-10.48 36.347 36.347 0 0 0-6.15-3.67 37.124 37.124 0 0 0-5.12-1.958 37.67 37.67 0 0 0-3.624-.896 39.875 39.875 0 0 0-7.68-.737c-21.162 0-37.345 16.183-37.345 37.345 0 21.159 16.183 37.342 37.345 37.342z"),u(o,"fill","#FFF"),u(a,"v-else",""),u(a,"xmlns","http://www.w3.org/2000/svg"),u(a,"viewBox","0 0 212 212"),u(a,"width","50"),u(a,"height","50")},m(t,e){s(t,a,e),r(a,n),r(a,o),r(o,i)},p:t,d(t){t&&p(a)}}}function U(t){let e,a,n;return{c(){(e=c("img")).src!==(a=t[0])&&u(e,"src",a),u(e,"alt",n=t[6]+" Logo")},m(t,a){s(t,e,a)},p(t,o){1&o&&e.src!==(a=t[0])&&u(e,"src",a),64&o&&n!==(n=t[6]+" Logo")&&u(e,"alt",n)},d(t){t&&p(e)}}}function H(e){let a,o,i,l,x,w,v,A,y,k,$,z,M,C,S,E,B,D,L,H,P,_,I,O,R,F,N,X,j,V,q,J,Y,Q,W,G;function K(t,e){return null!==t[0]?U:T}let Z=K(e),tt=Z(e);return{c(){a=c("div"),o=c("div"),i=c("div"),l=c("div"),tt.c(),x=h(),w=c("p"),v=c("span"),A=d(e[6]),y=h(),k=c("br"),$=h(),z=c("small"),M=d(e[1]),C=h(),S=c("div"),E=c("div"),(B=c("div")).innerHTML='<div style="position: relative;display: flex;"><div class="ixsrax"></div> \n              <div class="dRvxoz"></div> \n              <div class="kXBtNt"></div></div>',D=h(),L=c("div"),H=c("div"),P=d(e[6]),_=h(),I=c("div"),O=h(),(R=c("div")).textContent=`${function(){let t=new Date;return String(t.getHours()).padStart(2,"0")+":"+String(t.getMinutes()).padStart(2,"0")}()}`,F=h(),N=c("div"),X=c("textarea"),j=h(),(V=c("button")).innerHTML='<svg viewBox="0 0 448 448"><path d="M.213 32L0 181.333 320 224 0 266.667.213 416 448 224z"></path></svg>',q=h(),(J=c("button")).textContent="×",Q=h(),(W=c("button")).innerHTML='<svg width="18" viewBox="0 0 24 24"><path fill="#eceff1" d="M20.5 3.4A12.1 12.1 0 0012 0 12 12 0 001.7 17.8L0 24l6.3-1.7c2.8 1.5 5 1.4 5.8 1.5a12 12 0 008.4-20.3z"></path><path fill="#4caf50" d="M12 21.8c-3.1 0-5.2-1.6-5.4-1.6l-3.7 1 1-3.7-.3-.4A9.9 9.9 0 012.1 12a10 10 0 0117-7 9.9 9.9 0 01-7 16.9z"></path><path fill="#fafafa" d="M17.5 14.3c-.3 0-1.8-.8-2-.9-.7-.2-.5 0-1.7 1.3-.1.2-.3.2-.6.1s-1.3-.5-2.4-1.5a9 9 0 01-1.7-2c-.3-.6.4-.6 1-1.7l-.1-.5-1-2.2c-.2-.6-.4-.5-.6-.5-.6 0-1 0-1.4.3-1.6 1.8-1.2 3.6.2 5.6 2.7 3.5 4.2 4.2 6.8 5 .7.3 1.4.3 1.9.2.6 0 1.7-.7 2-1.4.3-.7.3-1.3.2-1.4-.1-.2-.3-.3-.6-.4z"></path></svg>  \n      <span>\n      '+ btn_text +'\n      </span>',this.c=t,u(l,"class","whatsapp-chat-avatar"),u(v,"class","whatsapp-chat-name"),m(z,"float","left"),u(i,"class","whatsapp-chat-header"),m(B,"opacity","0"),u(B,"class","whatsapp-chat-message-loader"),u(H,"class","bMIBDo"),u(I,"class","iSpIQi"),u(R,"class","cqCDVm"),m(L,"opacity","1"),u(L,"class","whatsapp-chat-message"),u(E,"class","whatsapp-chat-bubble"),u(S,"class","whatsapp-chat-body"),u(S,"pattern",e[3]),u(X,"placeholder",type_msg), u(X, "value", pre_msg),u(X,"maxlength","120"),u(X,"row","1"),u(V,"type","button"),u(N,"class","whatsapp-message-box"),u(J,"type","button"),u(J,"class","close-chat"),u(o,"id","whatsapp-chat"),u(o,"class",Y=e[4]?"show widget_"+ position +"":"hide widget_"+ position +""),u(W,"class","whatsapp-trigger-chat widget_"+ position +""),u(W,"title","Show Chat"),u(a,"id","app"),G=[g(X,"input",e[11]),g(V,"click",e[8]),g(J,"click",e[7]),g(W,"click",e[7])]},m(t,n){s(t,a,n),r(a,o),r(o,i),r(i,l),tt.m(l,null),r(i,x),r(i,w),r(w,v),r(v,A),r(w,y),r(w,k),r(w,$),r(w,z),r(z,M),r(o,C),r(o,S),r(S,E),r(E,B),r(E,D),r(E,L),r(L,H),r(H,P),r(L,_),r(L,I),I.innerHTML=e[2],r(L,O),r(L,R),r(o,F),r(o,N),r(N,X),b(X,e[5]),r(N,j),r(N,V),r(o,q),r(o,J),r(a,Q),r(a,W)},p(t,[e]){Z===(Z=K(t))&&tt?tt.p(t,e):(tt.d(1),(tt=Z(t))&&(tt.c(),tt.m(l,null))),64&e&&f(A,t[6]),2&e&&f(M,t[1]),64&e&&f(P,t[6]),4&e&&(I.innerHTML=t[2]),8&e&&u(S,"pattern",t[3]),32&e&&b(X,t[5]),16&e&&Y!==(Y=t[4]?"show widget_"+ position +"":"hide widget_"+ position +"")&&u(o,"class",Y)},i:t,o:t,d(t){t&&p(a),tt.d(),n(G)}}}function P(t,e,a){let n,o=!1,i="",{name:r=mt_name}=e,{number:s=phonenmb}=e,{avatar:p=null}=e,{description:c=timing}=e,{welcomeMessage:l=welcome_msg}=e,{pattern:d="/content/img/whatsapp-bg.png"}=e;return t.$set=(t=>{"name"in t&&a(9,r=t.name),"number"in t&&a(10,s=t.number),"avatar"in t&&a(0,p=t.avatar),"description"in t&&a(1,c=t.description),"welcomeMessage"in t&&a(2,l=t.welcomeMessage),"pattern"in t&&a(3,d=t.pattern)}),t.$$.update=(()=>{1536&t.$$.dirty&&a(6,n=r||s)}),[p,c,l,d,o,i,n,function(){a(4,o=!o)},function(){var t=/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)?"https://wa.me/"+String(s).replace("+","")+"?text="+encodeURIComponent(i):"https://api.whatsapp.com/send?phone="+s+"&text="+encodeURIComponent(i);window.open(t,"_blank"),a(5,i=""),a(4,o=!1)},r,s,function(){i=this.value,a(5,i)}]}"function"==typeof HTMLElement&&(L=class extends HTMLElement{constructor(){super(),this.attachShadow({mode:"open"})}connectedCallback(){for(const t in this.$$.slotted)this.appendChild(this.$$.slotted[t])}attributeChangedCallback(t,e,a){this[t]=a}$destroy(){!function(t,e){const a=t.$$;null!==a.fragment&&(n(a.on_destroy),a.fragment&&a.fragment.d(e),a.on_destroy=a.fragment=null,a.ctx=[])}(this,1),this.$destroy=t}$on(t,e){const a=this.$$.callbacks[t]||(this.$$.callbacks[t]=[]);return a.push(e),()=>{const t=a.indexOf(e);-1!==t&&a.splice(t,1)}}$set(){}});class _ extends L{constructor(t){super(),this.shadowRoot.innerHTML='<link rel="stylesheet" href="/content/plugins/Whatsapp-Widget-Plugin/css/whatsapp.css" />',D(this,{target:this.shadowRoot},P,H,i,{name:9,number:10,avatar:0,description:1,welcomeMessage:2,pattern:3}),t&&(t.target&&s(t.target,this,t.anchor),t.props&&(this.$set(t.props),C()))}static get observedAttributes(){return["name","number","avatar","description","welcomeMessage","pattern"]}get name(){return this.$$.ctx[9]}set name(t){this.$set({name:t}),C()}get number(){return this.$$.ctx[10]}set number(t){this.$set({number:t}),C()}get avatar(){return this.$$.ctx[0]}set avatar(t){this.$set({avatar:t}),C()}get description(){return this.$$.ctx[1]}set description(t){this.$set({description:t}),C()}get welcomeMessage(){return this.$$.ctx[2]}set welcomeMessage(t){this.$set({welcomeMessage:t}),C()}get pattern(){return this.$$.ctx[3]}set pattern(t){this.$set({pattern:t}),C()}}return customElements.define("whatsapp-widget",_),new _({target:document.body})}();
}