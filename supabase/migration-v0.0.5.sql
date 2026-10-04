alter table public.links add column if not exists is_match_event boolean not null default false;
alter table public.links add column if not exists regie_match_id uuid references public.ah_matches(id) on delete set null;
alter table public.links add column if not exists manual_opponent_name text;
alter table public.links add column if not exists manual_opponent_logo_url text;
alter table public.links add column if not exists manual_home_score text;
alter table public.links add column if not exists manual_away_score text;
create index if not exists links_regie_match_idx on public.links(regie_match_id);
notify pgrst,'reload schema';
