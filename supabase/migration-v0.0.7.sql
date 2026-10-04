-- V0.0.7 - plusieurs liens par événement
create table if not exists public.link_items (
 id uuid primary key default gen_random_uuid(),
 link_id uuid not null references public.links(id) on delete cascade,
 title text,
 url text not null,
 type text not null default 'Autre',
 sort_order integer not null default 0,
 active boolean not null default true,
 created_at timestamptz not null default now()
);
create index if not exists link_items_link_idx on public.link_items(link_id,sort_order,created_at);
alter table public.link_items enable row level security;
revoke all on table public.link_items from anon,authenticated;
grant all on table public.link_items to service_role;
insert into public.link_items(link_id,title,url,type,sort_order)
select id,null,url,type,0 from public.links l where coalesce(url,'')<>'' and not exists(select 1 from public.link_items i where i.link_id=l.id);
notify pgrst,'reload schema';
