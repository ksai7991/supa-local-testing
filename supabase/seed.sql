insert into profiles (full_name)
values ('Brian'), ('Krishna Sai'), ('Akash');

insert into orders (profile_id, total_amount, status)
select id, 199.99, 'completed' from profiles where full_name = 'Brian';
