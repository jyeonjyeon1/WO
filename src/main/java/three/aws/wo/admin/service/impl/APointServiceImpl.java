package three.aws.wo.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.admin.dao.APointDAO;
import three.aws.wo.admin.service.APointService;
import three.aws.wo.admin.vo.PointVO;
@Service
public class APointServiceImpl implements APointService {

	@Autowired 
	private APointDAO aPointDAO;
	
	@Override
	public List<PointVO> pointList() {
		return aPointDAO.pointList();
	}

}
