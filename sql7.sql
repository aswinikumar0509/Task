create database task;
show databases;

use task;

create table attribute(
Dress_ID int ,	
Style varchar(30) ,
Price varchar (30),
Rating int,
Size varchar(20),
Season varchar(20),
NeckLine varchar(20),	
SleeveLength varchar(20),	
waiseline	varchar(20),
Material  varchar(20),
FabricType	varchar(20),
Decoration	varchar(20),
PatternType varchar(20),	
Recommendation bool
);

show tables;
select * from attribute;
select * from Dress;

select attribute.dress_id, dress.dress_id
from attribute
left join dress
on attribute.dress_id = dress.dress_id
order by attribute.dress_id;
# in sql task try to perform left join operation with attrubute dataset and dress dataset on column Dress_ID
select attribute.dress_id, dress.dress_id
from dress
left join attribute
on attribute.dress_id = dress.dress_id
order by dress.dress_id;
#Write a sql query to find out how many unique dress that we have based on dress id 
select dress_id
from attribute a
where 1 <(select count(*) from dress where dress_id  = a.dress_id);
#Try to find out how mnay dress is having recommendation 0
select * from attribute where dress_id having recommendation = 0 ;

#Try to find out a third highest most selling dress id 
SELECT Max(dress_id) ThirdHighestSelling
FROM attribute WHERE Dress_id < (SELECT MAX(dress_id) FROM attribute)


