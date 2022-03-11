package com.ambrish.TB5.project1;

import com.ambrish.TB5.project1.Entity.Book;
import com.ambrish.TB5.project1.repository.BookRepository;
import com.ambrish.TB5.project1.repository.BookRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.Optional;
import java.util.Scanner;

@SpringBootApplication
public class Project1Application implements CommandLineRunner {

	@Autowired
	BookRepository bookRepository;

	public static void main(String[] args) {
		SpringApplication.run(Project1Application.class, args);
	}

	@Override
	public void run(String... args) throws Exception {


		try {
			Scanner scanner = new Scanner(System.in);


			String applicationChoice = "y";
			int menuChoice;

			while (!applicationChoice.equalsIgnoreCase("n")) {

				System.out.println("Enter Your Choice \n 1. Display All Record " +
						"\n 2. Add New Book \n 3. Search Book by Book ID " +
						"\n 4. Search By Book Name" +

						" \n 5. findBookByBookIdGreaterThanAndBookIdLessThanEqualOrderByBookId" +
						"\n 6. getMyBooksByBookIdRange HQL Way \n 7. getMyBooksByBookIdRangeNativeSQL");
				menuChoice = scanner.nextInt();
				scanner.nextLine();

				if(menuChoice == 1){
				ArrayList<Book> bookArrayList = (ArrayList<Book>) bookRepository.findAll();
				for(int i =1 ; i<bookArrayList.size() ; i++){

					System.out.println("Book Id : "+ bookArrayList.get(i).getBookId());
					System.out.println("Book Name : "+ bookArrayList.get(i).getBookName());
				}





				}

				if (menuChoice == 2)
				{
					Book book = new Book();
					System.out.println("enter book name");
					String bookName = scanner.nextLine();

					book.setBookName(bookName);
					bookRepository.save(book); // insert query will be auto generated , DML

				}
				if (menuChoice == 3)
				{

					System.out.println("enter book id");
					int bookId = scanner.nextInt();
					Optional<Book> book = bookRepository.findById( bookId);
					if(book.isPresent()) {
						System.out.println("Book Id : " + book.get().getBookId());
						System.out.println("Book Name : " + book.get().getBookName());
					}else{
						System.out.println("No Book Record Found with book id: "+bookId);
					}
				}
				if (menuChoice == 4)
				{

					System.out.println("enter book name for searching");
					String search = scanner.nextLine();
					ArrayList<Book> bookArrayList = (ArrayList<Book>) bookRepository.findBookByBookNameContainsOrderByBookIdDesc(search);
					for(int i =1 ; i<bookArrayList.size() ; i++){

						System.out.println("Book Id : "+ bookArrayList.get(i).getBookId());
						System.out.println("Book Name : "+ bookArrayList.get(i).getBookName());
					}

				}
				if (menuChoice == 5)
				{

					System.out.println("enter book id starts with");
					int a = scanner.nextInt();
					System.out.println("enter book id ends with");
					int b = scanner.nextInt();
					scanner.nextLine();
					ArrayList<Book> bookArrayList = (ArrayList<Book>)
							bookRepository.findBookByBookIdGreaterThanAndBookIdLessThanEqualOrderByBookId(a,b);
					for(int i =0 ; i<bookArrayList.size() ; i++){

						System.out.println("Book Id : "+ bookArrayList.get(i).getBookId());
						System.out.println("Book Name : "+ bookArrayList.get(i).getBookName());
					}

				}
				if (menuChoice == 6)
				{

					System.out.println("enter book id starts with");
					int a = scanner.nextInt();
					System.out.println("enter book id ends with");
					int b = scanner.nextInt();
					scanner.nextLine();
					ArrayList<Book> bookArrayList = (ArrayList<Book>)
							bookRepository.getMyBooksByBookIdRange(a,b);
					for(int i =0 ; i<bookArrayList.size() ; i++){

						System.out.println("Book Id : "+ bookArrayList.get(i).getBookId());
						System.out.println("Book Name : "+ bookArrayList.get(i).getBookName());
					}

				}
				if (menuChoice == 7)
				{

					System.out.println("enter book id starts with");
					int a = scanner.nextInt();
					System.out.println("enter book id ends with");
					int b = scanner.nextInt();
					scanner.nextLine();
					ArrayList<Book> bookArrayList = (ArrayList<Book>)
							bookRepository.getMyBooksByBookIdRangeNativeSQL(a,b);
					for(int i =0 ; i<bookArrayList.size() ; i++){

						System.out.println("Book Id : "+ bookArrayList.get(i).getBookId());
						System.out.println("Book Name : "+ bookArrayList.get(i).getBookName());
					}

				}

				System.out.println("Do you to continue press y ");
				applicationChoice = scanner.next();
			}
		}catch (Exception e){
			e.printStackTrace();
		}

	}
}
