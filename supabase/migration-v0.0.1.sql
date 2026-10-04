-- V0.0.1 : sécurisation des 3 tables existantes. Ne crée et ne supprime aucune table.
alter table public.access_codes enable row level security;
alter table public.links enable row level security;
alter table public.link_access_codes enable row level security;

revoke all on table public.access_codes from anon, authenticated;
revoke all on table public.links from anon, authenticated;
revoke all on table public.link_access_codes from anon, authenticated;

grant all on table public.access_codes to service_role;
grant all on table public.links to service_role;
grant all on table public.link_access_codes to service_role;

create unique index if not exists link_access_codes_unique
on public.link_access_codes(link_id, access_code_id);
