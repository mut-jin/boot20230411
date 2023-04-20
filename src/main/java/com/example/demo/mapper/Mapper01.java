package com.example.demo.mapper;

import java.time.*;

import org.apache.ibatis.annotations.*;

import com.example.demo.domain.*;

@Mapper
public interface Mapper01 {

	@Select("""
			SELECT CustomerName
			FROM Customers
			WHERE CustomerId = 1
			""")
	String method1();
	
	@Select("""
			SELECT FirstName
			FROM Employees
			WHERE EmployeeId = 1
			""")
	String method2();
	
	@Select("""
			SELECT SupplierName
			FROM Suppliers
			WHERE SupplierId = 1
			""")
	String method3();
	
	@Select("""
			SELECT CustomerName
			FROM Customers
			WHERE CustomerId = #{id}
			""")
	String method4(Integer id);
	
	@Select("""
			SELECT lastName
			FROM Employees
			WHERE EmployeeId = #{id}
			""")
	String method5 (int id);
	
	@Select("""
			SELECT Price
			FROM MyTable33
			LIMIT 1
			""")
	Integer method6();
	
	@Select("""
			SELECT Weight
			FROM MyTable33
			LIMIT 1
			""")
	Double method7();

	@Select("""
			SELECT Published
			FROM MyTable33
			LIMIT 1
			""")
	LocalDate method8();
	
	@Select("""
			SELECT Updated
			FROM MyTable33
			LIMIT 1
			""")
	LocalDateTime method9();

	@Select("""
			SELECT Title, 
				   Published,
				   Price,
				   Updated,
				   Weight
			FROM MyTable33
			LIMIT 1
			""")
	// 컬럼명과 (대소문자구분없이) 매치되는 빈의 프로퍼티명
	Dto06 method10();

	
	// 파라미터 하나일 때는 이름 매치 안시켜도 할당됨

	@Select("""
			SELECT
				Name,
				Price,
				Birth,
				Inserted
			FROM MyTable32
			LIMIT 1
			""")
	// 꼭 자바빈의 프로퍼티 수와 일치할 필요 없음
	Dto05 method11();
	
	@Select("""
			SELECT
				CustomerId AS id, 
				CustomerName AS name,
				ContactName,
				Address,
				City,
				PostalCode,
				Country
			FROM Customers
			WHERE CustomerId = 7
			""")
	Customer method12();
	
	@Select("""
			SELECT
				SupplierName name,
				ContactName,
				Address,
				City,
				PostalCode,
				Country,
				Phone
			FROM Suppliers
			WHERE SupplierId = 2
			""")
	Supplier method13();
	
	@Select("""
			SELECT
				EmployeeId id,
				LastName,
				FirstName,
				BirthDate birth,
				Photo,
				Notes
			FROM Employees
			WHERE EmployeeId = 5
			""")
	Employee method14();
}














