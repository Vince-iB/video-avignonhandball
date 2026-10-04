-- V0.0.14 - personnalisation de la page d'accueil et logo
create table if not exists public.video_settings(
 setting_key text primary key,
 setting_value text not null default '',
 updated_at timestamptz not null default now()
);
insert into public.video_settings(setting_key,setting_value) values
 ('home_eyebrow','CONTENUS EXCLUSIFS AVHB'),
 ('home_title','Vos vidéos et photos, simplement.'),
 ('home_description','Entrez votre code d’accès pour afficher votre sélection.'),
 ('home_logo_url','')
on conflict(setting_key) do nothing;
alter table public.video_settings enable row level security;
revoke all on table public.video_settings from anon,authenticated;
grant all on table public.video_settings to service_role;
insert into storage.buckets(id,name,public,file_size_limit,allowed_mime_types)
values('video-assets','video-assets',true,5242880,array['image/png','image/jpeg','image/webp','image/svg+xml'])
on conflict(id) do update set public=true,file_size_limit=5242880,allowed_mime_types=excluded.allowed_mime_types;
notify pgrst,'reload schema';
