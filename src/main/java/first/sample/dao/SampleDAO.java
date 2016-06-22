package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception{
	    return (Map<String, Object>)selectPagingList("sample.selectBoardList", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSession(Map<String, Object> commandMap) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectSession", commandMap);
	}
	
	public void updateHitCnt(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		update("sample.updateHitCnt", map);
	}
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		return (Map<String, Object>) selectOne("sample.selectBoardDetail", map);
	}
	public void updateBoard(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		update("sample.updateBoard", map);
	}
	
	public void insertFile(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertFile", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectFileList(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectFileList", map);
	}
	public void deleteFileList(Map<String, Object> map) throws Exception{
	    update("sample.deleteFileList", map);
	}
	 
	public void updateFile(Map<String, Object> map) throws Exception{
	    update("sample.updateFile", map);
	}
	
	public void updatePass(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		update("sample.updatePass", map);
	}
	public void updatePassT(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		update("sample.updatePassT", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectStudent(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectStudentList", map);
	}
	public void insertBoard(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertBoard", map);
	}
	public void insertStudent(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertStudent", map);
	}
	public void deleteBoard(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		update("sample.deleteBoard", map);
	}
	public void deleteStudent(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		delete("sample.deleteStudent", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectLecture(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectLectureList", map);
	}
	public void deleteLecture(Map<String, Object> map) throws Exception{
		// TODO 자동 생성된 메소드 스텁
		delete("sample.deleteLecture", map);
	}
	public void insertLecture(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertLecture", map);
	}
	public void updateCheck(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		update("sample.updateCheck", map);
	}
	public void updateCheckReturn(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		update("sample.updateCheckReturn", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCashCheck(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectCashCheck", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCashbook(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectCashbook", map);
	}
	public void insertCashbook(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertCashbook", map);
	}
	public void updateTotal(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		update("sample.updateTotal", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectDayLog(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectDayLog", map);
	}
	public void insertDayLog(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertDayLog", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectStudentLog(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectStudentLog", map);
	}
	public void insertStudentLog(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		insert("sample.insertStudentLog", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCount(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (List<Map<String, Object>>)selectList("sample.selectCount", map);
	}

}
