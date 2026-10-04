import{cookies}from"next/headers";import{verify}from"@/lib/session";import Login from"./login";import Dashboard from"./dashboard";
export default async function Admin(){return verify((await cookies()).get("admin_session")?.value)==="admin"?<Dashboard/>:<Login/>}
