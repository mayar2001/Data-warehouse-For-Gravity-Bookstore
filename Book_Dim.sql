



SELECT
    b.BOOK_ID,
    b.title,
    b.ISBN13,
    b.publication_date,
    p.publisher_id,
    p.publisher_name,
    bl.language_id,
    bl.language_name,
    ba.author_id ,
    a.author_name
FROM
   gravity_books.dbo.book b
LEFT JOIN
    gravity_books.dbo.book_author ba ON b.BOOK_ID = ba.BOOK_ID
LEFT JOIN
    gravity_books.dbo.publisher p ON b.publisher_id = p.publisher_id
LEFT JOIN
    gravity_books.dbo.author a ON ba.author_id = a.author_id
LEFT JOIN
    gravity_books.dbo.book_language bl ON b.language_id = bl.language_id