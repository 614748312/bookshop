package book.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.PublishHouseDao;
import book.entity.PublishHouse;

@Repository("publishHouseDao")
public class PublishHouesDaoImpl implements PublishHouseDao {

	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

	@Override
	public void updatePublishHouse(PublishHouse publishHouse) {
		hibernateTemplate.update(publishHouse);
	}

	@Override
	public void delPublishHouse(PublishHouse publishHouse) {
		hibernateTemplate.delete(publishHouse);
	}

	@Override
	public void addPublishHouse(PublishHouse publishHouse) {
		hibernateTemplate.save(publishHouse);
	}

	@Override
	public int getPublishHouseCount(String publishHouseId) {
		String sql = "select count(*) from tab_publishHouse where 1=1";
		List list1 = new ArrayList<>();
		if (publishHouseId != null && publishHouseId.length() > 0) {
			sql += " and publishHouseId = '" + publishHouseId + "'";
		}
		List<Long> list = (List<Long>) hibernateTemplate.find(sql, list1.toArray());
		return list.get(0).intValue();
	}

	@Override
	public int getPublishHouseCount() {

		return 1;
	}

	@Override
	public List<PublishHouse> findPublishHouse(int currentPage, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(PublishHouse.class);
		return (List<PublishHouse>) hibernateTemplate.findByCriteria(criteria, (currentPage - 1) * pageSize, pageSize);
	}

}
