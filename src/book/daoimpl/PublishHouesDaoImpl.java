package book.daoimpl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import book.dao.PublishHouseDao;
import book.entity.PublishHouse;

@Repository("publishHouseDao")
public class PublishHouesDaoImpl extends HibernateDaoSupport implements PublishHouseDao {
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();
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
	public int getPublishHouseCount() {
		String sql = "select count(*) from tab_pbulishHouse";
		return ((Integer) getHibernateTemplate().iterate(sql).next()).intValue();
	}

	@Override
	public List<PublishHouse> findPublishHouse(int currentPage, int pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(PublishHouse.class);
		return (List<PublishHouse>) hibernateTemplate.findByCriteria(criteria, (currentPage - 1) * pageSize, pageSize);
	}

}
