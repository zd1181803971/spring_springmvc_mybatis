package com.dzu.service;

import com.dzu.pojo.Books;

import java.awt.print.Book;
import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);
    //删除一本书
    int deleteBookById( int id);

    //修改一本书
    int updateBook(Books books);

    //查询一本书

    Books queryBookById( int id);
    //查询全部的书
    List<Books> queryAllBook();

    //按名字查询
    Books queryBookByName(String bookName);
}
