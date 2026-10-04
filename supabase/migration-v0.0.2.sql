-- V0.0.2 - migration non destructive
-- Utilise les tables existantes access_codes, links et link_access_codes.
create table if not exists public.categories (
 id uuid primary key default gen_random_uuid(),
 name text not null unique,
 active boolean not null default true,
 created_at timestamptz not null default now()
);
create table if not exists public.access_code_categories (
 id uuid primary key default gen_random_uuid(),
 access_code_id uuid not null references public.access_codes(id) on delete cascade,
 category_id uuid not null references public.categories(id) on delete cascade,
 created_at timestamptz not null default now(),
 unique(access_code_id,category_id)
);
alter table public.links add column if not exists category_id uuid references public.categories(id) on delete set null;
alter table public.links add column if not exists published_date date not null default current_date;
alter table public.access_codes enable row level security;
alter table public.links enable row level security;
alter table public.link_access_codes enable row level security;
alter table public.categories enable row level security;
alter table public.access_code_categories enable row level security;
revoke all on table public.access_codes,public.links,public.link_access_codes,public.categories,public.access_code_categories from anon,authenticated;
grant all on table public.access_codes,public.links,public.link_access_codes,public.categories,public.access_code_categories to service_role;
