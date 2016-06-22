package first.sample.service;
 
import java.util.HashMap;
import java.util.List;
import java.util.Map;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.common.util.FileUtils;
import first.sample.dao.SampleDAO;
 
@Service("sampleService")
public class SampleServiceImpl implements SampleService{
    Logger log = Logger.getLogger(this.getClass());
     
    @Resource(name="fileUtils")
    private FileUtils fileUtils;
     
    @Resource(name="sampleDAO")
    private SampleDAO sampleDAO;
    
    @Override
	public List<Map<String, Object>> selectSession(Map<String, Object> commandMap) throws Exception {
		return sampleDAO.selectSession(commandMap);
	}
    
    @Override
    public Map<String, Object> selectBoardList(Map<String, Object> map) throws Exception {
        return sampleDAO.selectBoardList(map);
    }
 
    
    
    @Override
    public Map<String, Object> selectBoardDetail(Map<String, Object> map) throws Exception {
        sampleDAO.updateHitCnt(map);
        Map<String, Object> resultMap = new HashMap<String,Object>();
        Map<String, Object> tempMap = sampleDAO.selectBoardDetail(map); // 게시글의 상세정보
        resultMap.put("map", tempMap); 
         
        List<Map<String,Object>> list = sampleDAO.selectFileList(map); // 게시글의 첨부파일 목록, 다중 업로드가 가능하도록 list이용
        resultMap.put("list", list);
         
        return resultMap;
    }
 
    @Override
    public void updateBoard(Map<String, Object> map, HttpServletRequest request) throws Exception{
    	sampleDAO.updateBoard(map);
        
        sampleDAO.deleteFileList(map);
        List<Map<String,Object>> list = fileUtils.parseUpdateFileInfo(map, request);
        Map<String,Object> tempMap = null;
        for(int i=0, size=list.size(); i<size; i++){
            tempMap = list.get(i);
            if(tempMap.get("IS_NEW").equals("Y")){
                sampleDAO.insertFile(tempMap);
            }
            else{
                sampleDAO.updateFile(tempMap);
            }
        }
    }

	@Override
	public void updatePass(Map<String, Object> map, HttpServletRequest request) {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.updatePass(map);
	}

	@Override
	public void updatePassT(Map<String, Object> map, HttpServletRequest request) {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.updatePassT(map);
	}

	@Override
	public List<Map<String, Object>> selectStudent(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectStudent(map);
	}

	@Override
	public void insertStudent(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.insertStudent(map);
		
	}
	@Override
    public void insertBoard(Map<String, Object> map, HttpServletRequest request) throws Exception {
        sampleDAO.insertBoard(map);
         
        List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(map, request);
        for(int i=0, size=list.size(); i<size; i++){
            sampleDAO.insertFile(list.get(i));
        }
    }
    @Override
    public void deleteBoard(Map<String, Object> map) throws Exception {
        sampleDAO.deleteBoard(map);
    }
    
	@Override
	public void deleteStudent(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.deleteStudent(map);
	}

	@Override
	public List<Map<String, Object>> selectLecture(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectLecture(map);
	}

	@Override
	public void deleteLecture(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.deleteLecture(map);
	}

	@Override
	public void insertLecture(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.insertLecture(map);
	}

	@Override
	public void updateCheck(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.updateCheck(map);
	}
	@Override
	public void updateCheckReturn(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.updateCheckReturn(map);
	}
	@Override
	public List<Map<String, Object>> selectCashCheck(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectCashCheck(map);
	}

	@Override
	public List<Map<String, Object>> selectCashbook(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectCashbook(map);
	}

	@Override
	public void insertCashbook(Map<String, Object> map, HttpServletRequest request) {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.insertCashbook(map);
	}

	@Override
	public void updateTotal(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.updateTotal(map);
	}

	@Override
	public List<Map<String, Object>> selectDayLog(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectDayLog(map);
	}

	@Override
	public void insertDayLog(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.insertDayLog(map);
	}

	@Override
	public List<Map<String, Object>> selectStudentLog(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectStudentLog(map);
	}

	@Override
	public void insertStudentLog(Map<String, Object> map, HttpServletRequest request) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		sampleDAO.insertStudentLog(map);
	}

	@Override
	public List<Map<String, Object>> selectCount(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return sampleDAO.selectCount(map);
	}
	
 
}