-- Run once in Supabase SQL Editor (adds height and weight to profiles)
alter table public.profiles
  add column if not exists height_cm numeric(5,1) check (height_cm between 80 and 260),
  add column if not exists weight_kg numeric(5,1) check (weight_kg between 20 and 250);
