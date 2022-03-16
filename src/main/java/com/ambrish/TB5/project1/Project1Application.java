package com.ambrish.TB5.project1;

import com.ambrish.TB5.project1.Entity.*;
import com.ambrish.TB5.project1.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Optional;
import java.util.Scanner;

@SpringBootApplication
public class Project1Application implements CommandLineRunner {

	@Autowired
	BookRepository bookRepository;

	@Autowired
	AppointmentRepository appointmentRepository;

	@Autowired
	ArticleRepository articleRepository;

	@Autowired
	BillDetailRepository billDetailRepository;
	@Autowired
	BillMRepository billMRepository;

	@Autowired
	BillMasterRepository billMasterRepository;

	@Autowired
	BillperRepository billperRepository;
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
try {
	System.out.println("Enter Your Choice \n 1. Display All Record " +
			"\n 2. Add New Book \n 3. Search Book by Book ID " +
			"\n 4. Search By Book Name" +

			" \n 5. findBookByBookIdGreaterThanAndBookIdLessThanEqualOrderByBookId" +
			"\n 6. getMyBooksByBookIdRange HQL Way \n 7. getMyBooksByBookIdRangeNativeSQL \n 8 List All Appointment " +
			"\n 9. Article list  \n 9. Article list" +
			"\n 700. BIll_Details" +
			"\n 701. BIll_M" +
			"\n 702. BIll_Master" +
			"\n 703. BIll_Per" +
			"\n 704. CaseDetails" +
			"\n 705. caveAt" +
			"\n 706. Chember" +
			"\n 704. citation");
	menuChoice = scanner.nextInt();
	scanner.nextLine();

	if (menuChoice == 1) {
		ArrayList<Book> bookArrayList = (ArrayList<Book>) bookRepository.findAll();
		for (int i = 1; i < bookArrayList.size(); i++) {

			System.out.println("Book Id : " + bookArrayList.get(i).getBookId());
			System.out.println("Book Name : " + bookArrayList.get(i).getBookName());
		}


	}

	if (menuChoice == 2) {
		Book book = new Book();
		System.out.println("enter book name");
		String bookName = scanner.nextLine();

		book.setBookName(bookName);

		bookRepository.save(  book); // insert query will be auto generated , DML

	}
	if (menuChoice == 3) {

		System.out.println("enter book id");
		int bookId = scanner.nextInt();
		Optional<Book> book = bookRepository.findById(bookId);
		if (book.isPresent()) {
			System.out.println("Book Id : " + book.get().getBookId());
			System.out.println("Book Name : " + book.get().getBookName());
		} else {
			System.out.println("No Book Record Found with book id: " + bookId);
		}
	}
	if (menuChoice == 4) {

		System.out.println("enter book name for searching");
		String search = scanner.nextLine();
		ArrayList<Book> bookArrayList = (ArrayList<Book>) bookRepository.findBookByBookNameContainsOrderByBookIdDesc(search);
		for (int i = 1; i < bookArrayList.size(); i++) {

			System.out.println("Book Id : " + bookArrayList.get(i).getBookId());
			System.out.println("Book Name : " + bookArrayList.get(i).getBookName());
		}

	}
	if (menuChoice == 5) {

		System.out.println("enter book id starts with");
		int a = scanner.nextInt();
		System.out.println("enter book id ends with");
		int b = scanner.nextInt();
		scanner.nextLine();
		ArrayList<Book> bookArrayList = (ArrayList<Book>)
				bookRepository.findBookByBookIdGreaterThanAndBookIdLessThanEqualOrderByBookId(a, b);
		for (int i = 0; i < bookArrayList.size(); i++) {

			System.out.println("Book Id : " + bookArrayList.get(i).getBookId());
			System.out.println("Book Name : " + bookArrayList.get(i).getBookName());
		}

	}
	if (menuChoice == 6) {

		System.out.println("enter book id starts with");
		int a = scanner.nextInt();
		System.out.println("enter book id ends with");
		int b = scanner.nextInt();
		scanner.nextLine();
		ArrayList<Book> bookArrayList = (ArrayList<Book>)
				bookRepository.getMyBooksByBookIdRange(a, b);
		for (int i = 0; i < bookArrayList.size(); i++) {

			System.out.println("Book Id : " + bookArrayList.get(i).getBookId());
			System.out.println("Book Name : " + bookArrayList.get(i).getBookName());
		}

	}
	if (menuChoice == 7) {

		System.out.println("enter book id starts with");
		int a = scanner.nextInt();
		System.out.println("enter book id ends with");
		int b = scanner.nextInt();
		scanner.nextLine();
		ArrayList<Book> bookArrayList = (ArrayList<Book>)
				bookRepository.getMyBooksByBookIdRangeNativeSQL(a, b);
		for (int i = 0; i < bookArrayList.size(); i++) {

			System.out.println("Book Id : " + bookArrayList.get(i).getBookId());
			System.out.println("Book Name : " + bookArrayList.get(i).getBookName());
		}

	}
	if (menuChoice == 8) {

		ArrayList<Appointment> appointmentList = (ArrayList<Appointment>)
				appointmentRepository.findAll();
		for (int i = 0; i < appointmentList.size(); i++) {

			System.out.println("appointment Subject " + appointmentList.get(i).getSubject());
			System.out.println("appointment Status  " + appointmentList.get(i).getStatus());
		}

	}

	if (menuChoice == 9) {

		ArrayList<Article> articleArrayList = (ArrayList<Article>)
				articleRepository.findAll();
		for (int i = 0; i < articleArrayList.size(); i++) {

			System.out.println("article Name " + articleArrayList.get(i).getActName());
			System.out.println("article author  " + articleArrayList.get(i).getAuthor());
			System.out.println("published " + articleArrayList.get(i).getPublished());
			System.out.println("topic  " + articleArrayList.get(i).getTopic());
			System.out.println("synopsis   " + articleArrayList.get(i).getSynopsis());
			System.out.println("-----------------------------------------------------------");

		}

	}
	if (menuChoice == 700) {
		ArrayList<BillDetail> billDetailsArrayList = (ArrayList<BillDetail>)
				billDetailRepository.findAll();
		for (int i = 0; i < billDetailsArrayList.size(); i++) {
			int count = i + 1;
			System.out.println("==========Bill Details===== " + count);
			System.out.println("ID :" + billDetailsArrayList.get(i).getId());
			System.out.println("Ref No:   " + billDetailsArrayList.get(i).getRefNo());
			System.out.println("Short Ref No :" + billDetailsArrayList.get(i).getShortRef());
			System.out.println("Bill NO : " + billDetailsArrayList.get(i).getBillNo());
			System.out.println("Type :" + billDetailsArrayList.get(i).getType());
			System.out.println("Date : " + billDetailsArrayList.get(i).getDate());
			System.out.println("Category:   " + billDetailsArrayList.get(i).getCat());
			System.out.println("Note  :" + billDetailsArrayList.get(i).getNote());
			System.out.println("-----------------------------------------------------------");
		}
	}
	if (menuChoice == 701) {
		ArrayList<BillM> billMArrayList = (ArrayList<BillM>)
				billMRepository.findAll();
		for (int i = 0; i < billMArrayList.size(); i++) {
			System.out.println("==========701BillM=====");
			System.out.println("ID :" + billMArrayList.get(i).getId());
			System.out.println("Type :" + billMArrayList.get(i).getType());
			System.out.println("Cat :" + billMArrayList.get(i).getCat());
			System.out.println("Amount :" + billMArrayList.get(i).getAmount());
			System.out.println("Note :" + billMArrayList.get(i).getNote());
			System.out.println("---------------------------");
		}
	}
	if (menuChoice == 702) {
		ArrayList<BillMaster> billMasterArrayList = (ArrayList<BillMaster>)
				billMasterRepository.findAll();
		for (int i = 0; i < billMasterArrayList.size(); i++) {
			System.out.println("==========701BillM=====");
			System.out.println("Bill No :" + billMasterArrayList.get(i).getBillNo());
			System.out.println("bill Date :" + billMasterArrayList.get(i).getBillDate());
			System.out.println("BillPaid :" + billMasterArrayList.get(i).getBillPaid());
			System.out.println("RefNo :" + billMasterArrayList.get(i).getRefNo());
			System.out.println("ClId :" + billMasterArrayList.get(i).getClId());
			System.out.println("ShortRef :" + billMasterArrayList.get(i).getShortRef());
			System.out.println("---------------------------");
		}
	}
	if (menuChoice == 703) {
		ArrayList<Billper> billperArrayList = (ArrayList<Billper>)
				billperRepository.findAll();
		for (int i = 0; i < billperArrayList.size(); i++) {
			System.out.println("==========701BillM=====");
			System.out.println("Aid :" + billperArrayList.get(i).getAid());
			System.out.println("Head :" + billperArrayList.get(i).getHead());
			System.out.println("Date :" + billperArrayList.get(i).getDate());
			System.out.println("Amount :" + billperArrayList.get(i).getAmt());
			System.out.println("Mode :" + billperArrayList.get(i).getMode());
			System.out.println("Bank :" + billperArrayList.get(i).getBank());
			System.out.println("---------------------------");
		}
	}
}catch (Exception e){
	e.printStackTrace();
}
				System.out.println("Do you to continue press y ");
				applicationChoice = scanner.next();
			}
		}catch (Exception e){
			e.printStackTrace();
		}

	}
}
