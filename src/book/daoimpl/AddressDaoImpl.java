package book.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import book.dao.AddressDao;
import book.entity.Address;

@Repository("addressDao")
public class AddressDaoImpl implements AddressDao {
	@Autowired // 按类型注入
	private HibernateTemplate hibernateTemplate;

	@Override
	public int getAdderssCount(String userName) {
		String sql = "select count(*) from Address where 1=1";
		List list1 = new ArrayList<>();
		if (userName != null && userName.length() > 0) {
			sql += " and userName = '" + userName + "'";
		}
		List<Long> list = (List<Long>) hibernateTemplate.find(sql, list1.toArray());
		return list.get(0).intValue();
	}

	@Override
	public List<Address> findAdderssByUsername(int currentPage, int pageSize, String userName) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Address.class);
		if (userName != null && userName.length() > 0) {
			criteria.add(Restrictions.eq("userName", userName));
		}
		return (List<Address>) hibernateTemplate.findByCriteria(criteria, (currentPage - 1) * pageSize, pageSize);
	}

	@Override
	public void addAddress(Address address) {
		hibernateTemplate.save(address);
	}

	@Override
	public void delAddress(Address address) {
		hibernateTemplate.delete(address);
	}

	@Override
	public void updateAddress(Address address) {
		hibernateTemplate.update(address);
	}
}
