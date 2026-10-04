import{NextResponse}from"next/server";export async function POST(req:Request){const r=NextResponse.redirect(new URL("/",req.url),303);r.cookies.set("video_access","",{maxAge:0,path:"/"});return r}
