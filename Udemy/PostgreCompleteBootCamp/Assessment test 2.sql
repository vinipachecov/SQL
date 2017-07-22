
--1
select * from cd.facilities;

--2
select "name", cd.facilities.membercost, cd.facilities.guestcost from cd.facilities;

--3
select "name" 
from cd.facilities
where membercost > 0;

--4
select "name", membercost, monthlymaintenance  
from cd.facilities
where membercost > 0 and ( membercost < monthlymaintenance/50.0);

--answer
select facid, name, membercost, monthlymaintenance 
from cd.facilities 
where membercost > 0 and (membercost < monthlymaintenance/50.0);


--5
select "name" 
from cd.facilities
where "name" like '%Tennis%';

--6
select  *
from cd.facilities
where "name" like '%2%';

--answer
select * from cd.facilities where facid in (1,5);

--7
--How can you produce a list of members who joined after the start of September 2012?
--Return the memid, surname, firstname, and joindate of the members in question.

select * from cd.members;

select memid, firstname, surname ,joindate 
from cd.members as members
where joindate > '2012-09-01';

--answer
select memid, firstname, surname ,joindate 
from cd.members as members
where joindate >= '2012-09-01';

--8
--How can you produce an ordered list of the first 10 surnames in the members table?
-- The list must not contain duplicates.
select distinct surname  
from cd.members
limit 10;

--9
--You'd like to get the signup date of your last member. 
--How can you retrieve this information?
select * from cd.members
order by joindate desc;

select *
from cd.members
order by joindate desc
limit 1; 

--answer

select max(joindate) as latest from cd.members;



--10 
--Produce a count of the number of facilities that have a cost to guests of 10 or more.

select count(facid) 
from cd.facilities
where guestcost > 10;

--answer

select count(*) from cd.facilities where guestcost >= 10;

--11
--Produce a list of the total number of slots booked per facility in the month of September 2012. 
--Produce an output table consisting of facility id and slots, sorted by the number of slots.


select * from cd.bookings;

select cd.facilities.facid, sum(slots) as "Total Slots"   
from cd.bookings as booking
join cd.facilities 
on cd.facilities.facid = booking.facid
where starttime between '2012-09-01' and '2012-10-1'
group by cd.facilities.facid
order by sum(slots);

select distinct facid, slots 
from cd.bookings
order by slots asc;

select * from cd.facilities;

--answer 
select facid, sum(slots) as "Total Slots" 
from cd.bookings
where starttime >= '2012-09-01' and starttime < '2012-10-01'
group by facid order by sum(slots);

--12
--Produce a list of facilities with more than 1000 slots booked. 
--Produce an output table consisting of facility id and total slots, sorted by facility id.

select cd.facilities.facid, sum(slots) total_slots_booked
from cd.bookings as booking
join cd.facilities
on cd.facilities.facid = booking.facid
group by cd.facilities.facid
having  sum(slots)> 1000
order by facid asc;

--

select cd.facilities.facid, sum(slots)
from cd.bookings as booking
join cd.facilities
on cd.facilities.facid = booking.facid
group by cd.facilities.facid
order by cd.facilities.facid;


--answer
 
 select facid, sum(slots) as "Total Slots" 
 from cd.bookings 
 group by facid
 having sum(slots) > 1000 order by facid;

--13
--How can you produce a list of the start times for bookings for tennis courts,
-- for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time.

select *
from cd.facilities;


select *
from cd.bookings;

select cd.facilities."name", cd.bookings.starttime
from cd.facilities
inner join cd.bookings
on cd.bookings.facid = cd.facilities.facid
where 
	cd.bookings.starttime between '2012-09-21 00:00:00' and '2012-09-21 24:00:00'
	and cd.facilities."name" like '%Tennis Court%' 
order by cd.bookings.starttime;


--answer
select bks.starttime as start, facs.name as name 
from cd.facilities facs
inner join cd.bookings bks on facs.facid = bks.facid 
where facs.facid in (0,1) and bks.starttime >= '2012-09-21' and bks.starttime < '2012-09-22' order by bks.starttime;
--14
--How can you produce a list of the start times for bookings by members named 'David Farrell'?

select * from cd.facilities;

select * from cd.bookings;

select * from cd.members;

select  members.firstname || ' ' || members.surname as full__name, cd.bookings.starttime
from cd.members 
inner join cd.bookings
on cd.bookings.memid = members.memid
where members.firstname || ' ' || members.surname = 'David Farrell';

--answer

 select bks.starttime 
 from cd.bookings bks 
 inner join cd.members mems 
 on mems.memid = bks.memid 
 where mems.firstname='David' and mems.surname='Farrell';















