package book.dao;

import java.util.List;

import book.entity.PublishHouse;

public interface PublishHouseDao {

	void updatePublishHouse(PublishHouse publishHouse);

	void delPublishHouse(PublishHouse publishHouse);

	void addPublishHouse(PublishHouse publishHouse);

	int getPublishHouseCount();

	List<PublishHouse> findPublishHouse(int currentPage, int pageSize);

	int getPublishHouseCount(String publishHouseId);

}
