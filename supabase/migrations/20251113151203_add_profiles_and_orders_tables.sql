-- Create new tables
create table profiles (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete cascade,
  full_name text,
  created_at timestamptz default now()
);

create table orders (
  id bigint primary key generated always as identity,
  profile_id uuid references profiles(id) on delete cascade,
  total_amount numeric(10,2),
  status text default 'pending',
  created_at timestamptz default now()
);
