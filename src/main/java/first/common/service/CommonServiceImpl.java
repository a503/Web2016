package first.common.service;
 
import java.util.Map;

import javax.annotation.Resource;
 
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
 
import first.common.dao.CommonDAO;
 
@Service("commonService")
public class CommonServiceImpl implements CommonService{
    Logger log = Logger.getLogger(this.getClass());
     
    @Resource(name="commonDAO")
    private CommonDAO commonDAO;

	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		// TODO 자동 생성된 메소드 스텁
		System.out.println(map+"selectFileInfo CommonServiceImpl");
		return commonDAO.selectFileInfo(map);
	}
}