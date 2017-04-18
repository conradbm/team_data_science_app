# Author: Blake Conrad
# Test script to test some of the stored procedures to our database

CALL sp_getBook(1);
CALL sp_getBookByChapter(1,1);
CALL sp_getBookByChapterByVerse(1,1,3);