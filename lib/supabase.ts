import {createClient} from "@supabase/supabase-js";
export function db(){const u=process.env.SUPABASE_URL,k=process.env.SUPABASE_SECRET_KEY;if(!u||!k)throw new Error("Variables Supabase manquantes");return createClient(u,k,{auth:{persistSession:false,autoRefreshToken:false,detectSessionInUrl:false}})}
