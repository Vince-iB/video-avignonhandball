"use client";import{Copy,Check}from"lucide-react";import{useState}from"react";
export default function CopyButton({url}:{url:string}){const[ok,setOk]=useState(false);return <button className="btn secondary" onClick={async()=>{await navigator.clipboard.writeText(url);setOk(true);setTimeout(()=>setOk(false),1500)}}>{ok?<Check size={17}/>:<Copy size={17}/>} {ok?"Copié":"Copier"}</button>}
