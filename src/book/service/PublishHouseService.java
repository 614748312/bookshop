package book.service;

import book.entity.PageBean;
import book.entity.PublishHouse;

public interface PublishHouseService {

	PageBean<PublishHouse> findPublishHouse(int currentPage, int pageSize);

	void addPublishHouse(PublishHouse publishHouse);

	void delPublishHouse(PublishHouse publishHouse);

	void updatePublishHouse(PublishHouse publishHouse);

}