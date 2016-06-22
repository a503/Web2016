package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface SampleService {
	
	List<Map<String, Object>> selectSession(Map<String, Object> commandMap) throws Exception;
	
	Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception;

	void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;

	Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception;

	void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void deleteBoard(Map<String, Object> map) throws Exception;

	void updatePass(Map<String, Object> map, HttpServletRequest request);

	void updatePassT(Map<String, Object> map, HttpServletRequest request);

	List<Map<String, Object>> selectStudent(Map<String, Object> map) throws Exception;

	void insertStudent(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void deleteStudent(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> selectLecture(Map<String, Object> map) throws Exception;

	void deleteLecture(Map<String, Object> map) throws Exception;

	void insertLecture(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void updateCheck(Map<String, Object> map) throws Exception;

	void updateCheckReturn(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectCashCheck(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> selectCashbook(Map<String, Object> map) throws Exception;

	void insertCashbook(Map<String, Object> map, HttpServletRequest request);

	void updateTotal(Map<String, Object> map, HttpServletRequest request) throws Exception;

	List<Map<String, Object>> selectDayLog(Map<String, Object> map) throws Exception;

	void insertDayLog(Map<String, Object> map, HttpServletRequest request) throws Exception;

	List<Map<String, Object>> selectStudentLog(Map<String, Object> map) throws Exception;

	void insertStudentLog(Map<String, Object> map, HttpServletRequest request) throws Exception;

	List<Map<String, Object>> selectCount(Map<String, Object> map);

}

