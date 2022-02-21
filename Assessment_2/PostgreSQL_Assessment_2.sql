/* 
ASSESSMENT #2: Perform various SQL operations on database.
Database: exercises.tar
*/

-- Question #1
SELECT * FROM cd.facilities;

-- Question #2
SELECT name, membercost FROM cd.facilities;

-- Question #3
SELECT * FROM cd.facilities WHERE membercost > 0;

-- Question #4
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND
(membercost < monthlymaintenance/50.0);

-- Question #5
SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';

-- Question #6
SELECT * FROM cd.facilities WHERE facid IN (1,5);

-- Question #7
SELECT memid, surname, firstname, joindate
AS date
FROM cd.members
WHERE DATE(joindate) > '2012-09-01';

-- Question #8
SELECT DISTINCT(surname)
FROM cd.members
ORDER BY surname ASC
LIMIT 10;

-- Question #9
SELECT joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

-- Question #10
SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost >= 10;

-- Question #11
SELECT facid, SUM(slots)
FROM cd.bookings
WHERE TO_CHAR(starttime, 'FMMonth YYYY') = 'September 2012'
GROUP BY facid;

-- Question #12
SELECT facid, SUM(slots) AS total_slots
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

-- Question #13
SELECT starttime AS start, cd.facilities.name AS name
FROM cd.bookings
INNER JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE DATE(starttime) = '2012-09-21'
AND cd.facilities.name ILIKE '%tennis%court%'
ORDER BY start ASC;

-- Question #14
SELECT cd.bookings.starttime, cd.members.firstname, cd.members.surname
FROM cd.bookings
INNER JOIN cd.members
ON cd.bookings.memid = cd.members.memid
WHERE cd.members.firstname = 'David'
AND cd.members.surname = 'Farrell';