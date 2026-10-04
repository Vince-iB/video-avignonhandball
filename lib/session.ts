import crypto from "crypto";
function secret(){const value=process.env.SESSION_SECRET;if(!value)throw new Error("SESSION_SECRET manquant");return value}
export function sign(value:string){return `${value}.${crypto.createHmac("sha256",secret()).update(value).digest("hex")}`}
export function verify(token?:string){if(!token)return null;const i=token.lastIndexOf(".");if(i<1)return null;const value=token.slice(0,i),sig=token.slice(i+1);const expected=crypto.createHmac("sha256",secret()).update(value).digest("hex");if(sig.length!==expected.length)return null;return crypto.timingSafeEqual(Buffer.from(sig),Buffer.from(expected))?value:null}
