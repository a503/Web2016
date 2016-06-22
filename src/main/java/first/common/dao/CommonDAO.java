package first.common.dao;
 
import java.util.Map;

import org.springframework.stereotype.Repository;
 
@Repository("commonDAO")
public class CommonDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFileInfo(Map<String, Object> map) {
		// TODO 자동 생성된 메소드 스텁
		return (Map<String, Object>)selectOne("common.selectFileInfo", map);
	}
 
}