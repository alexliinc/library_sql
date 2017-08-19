-- ADVANCED / JOIN QUERIES
-- For all of these queries, you SHOULD NOT use an id # in a WHERE clause

-- Find all fields (book and author related) for all books written by George R.R. Martin.
select * from books join authors on (books.author_id = authors.id) where authors.name = 'George R.R. Martin';

-- Find all fields (book and author related) for all books written by Milan Kundera.
select * from books join authors on (books.author_id = authors.id) where authors.name = 'Milan Kundera';

-- Find all books written by an author from China or the UK.
select * from books join authors on (books.author_id = authors.id) where authors.nationality = 'China' OR authors.nationality = 'United Kingdom';

-- Find out how many books Albert Camus wrote.
select count(*) from books join authors on (books.author_id = authors.id) where authors.name = 'Albert Camus';

-- Find out how many books written before 1980 were by authors not from the US.
select * from books join authors on (books.author_id = authors.id) where books.publication_date < 1980 and authors.nationality != 'United States of America';

-- For these last two, you should not need a JOIN.

-- Find all authors whose names start with 'J'.
select * from authors where name like 'J%';

-- Find all books whose titles contain 'the'.
select * from books where title like '%the%';
