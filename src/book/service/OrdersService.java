package book.service;

import book.entity.Orders;

public interface OrdersService {

	void addOrders(Orders orders);

	void delOrders(Orders orders);

	void updateOrders(Orders orders);

}