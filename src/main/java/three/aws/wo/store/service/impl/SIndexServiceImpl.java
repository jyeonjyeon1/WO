package three.aws.wo.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import three.aws.wo.store.dao.SIndexDAO;
import three.aws.wo.store.service.SIndexService;

@Service
public class SIndexServiceImpl implements SIndexService {
	@Autowired
	private SIndexDAO sIndexDAO;
}
