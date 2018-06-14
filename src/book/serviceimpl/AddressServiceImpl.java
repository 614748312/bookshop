package book.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import book.dao.AddressDao;
import book.entity.Address;
import book.entity.PageBean;
import book.service.AddressService;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService {
	@Autowired // 注入
	private AddressDao addressDao;

	@Override
	public PageBean<Address> findAdderssByUsername(int currentPage, int pageSize, String userName) {
		int count = addressDao.getAdderssCount(userName); // 求当前类别信息数量
		int totalPage = (int) Math.ceil(count * 1.0 / pageSize);// 求总页数
		List<Address> list = addressDao.findAdderssByUsername(currentPage, pageSize, userName); // 求当前页的集合数据
		PageBean<Address> pb = new PageBean<>();
		pb.setCount(count);
		if (currentPage == 0)
			currentPage = 1;
		pb.setCurrentPage(currentPage);
		pb.setList(list);
		pb.setPageSize(pageSize);
		pb.setTotalPage(totalPage);
		return pb;
	}

	@Override
	public void addAddress(Address address) {
		addressDao.addAddress(address);

	}

	@Override
	public void delAddress(Address address) {
		addressDao.delAddress(address);

	}

	@Override
	public void updateAddress(Address address) {
		addressDao.updateAddress(address);
	}
}
