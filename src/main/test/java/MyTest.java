import com.dzu.pojo.Books;
import com.dzu.service.BookService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    @Test
    public void  test(){
        ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
        BookService bookService = (BookService) ac.getBean("BookServiceImpl");
        for (Books books : bookService.queryAllBook()) {
            System.out.println(books);
        }
    }
}
