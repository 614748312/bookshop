package book.dao;

import java.util.List;

import book.entity.Address;

public interface AddressDao {

	int getAdderssCount(String userName);

	List<Address> findAdderssByUsername(int currentPage, int pageSize, String userName);

	void addAddress(Address address);

	void delAddress(Address address);

	void updateAddress(Address address);

}
