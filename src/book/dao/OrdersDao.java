package book.dao;

import book.entity.Orders;

public interface OrdersDao {

	void addOrders(Orders orders);

	void delOrders(Orders orders);

	void updateOrders(Orders orders);

}
