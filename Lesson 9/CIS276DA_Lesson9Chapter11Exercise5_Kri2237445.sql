use ex;

ALTER TABLE committees
ADD CONSTRAINT committee_name_unique UNIQUE (committee_name);

insert into committees (committee_name)
values('mybook');

select * from committees;

