package com.earlybud.junit;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
<<<<<<< HEAD
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {

		try (Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:JAVA", "spring",
				"1234")) {
=======
			Class.forName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {

		try (Connection con = DriverManager.getConnection("jdbc:log4jdbc:oracle:thin:@localhost:1521:XE", "spring",
				"java")) {
>>>>>>> branch 'master' of https://github.com/laughcryrepeat/Earlybud.git

			log.info(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}

}
