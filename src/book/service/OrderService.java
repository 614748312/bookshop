package book.service;

import book.entity.Order;

public interface OrderService {

	void addOrder(Order order);

	void delOrder(Order order);

	void updateOrder(Order order);

}