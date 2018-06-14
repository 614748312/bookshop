package book.dao;

import book.entity.Order;

public interface OrderDao {

	void addOrder(Order order);

	void delOrder(Order order);

	void updateOrder(Order order);

}
