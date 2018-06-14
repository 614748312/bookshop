package book.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.DiaryDao;
import book.service.DiaryService;

@Service("diaryService")
@Transactional
public class DiaryServiceImpl implements DiaryService {
	@Autowired // 注入
	private DiaryDao diaryDao;
}
