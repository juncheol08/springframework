package kr.ed.haebeop.test.proxy;

import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService{
    //구현체
    public void rent(Book book) {
        System.out.println("rent : "+ book.getTitle());
    }
}
