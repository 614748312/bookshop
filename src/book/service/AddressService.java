package book.service;

import book.entity.Address;
import book.entity.PageBean;

public interface AddressService {

	PageBean<Address> findAdderssByUsername(int currentPage, int pageSize, String userName);

	void addAddress(Address address);

	void delAddress(Address address);

	void updateAddress(Address address);

}