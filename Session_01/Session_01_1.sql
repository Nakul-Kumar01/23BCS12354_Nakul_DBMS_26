Select *
from
fb_friend_requests as s
left join
fb_friend_requests as a
on 
s.user_id_sender=a.user_id_sender
and 
s.user_id_receiver=a.user_id_receiver
and
a.action='accepted'
where
s.action='sent';
