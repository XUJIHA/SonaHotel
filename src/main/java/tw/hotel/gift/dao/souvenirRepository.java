package tw.hotel.gift.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.hotel.gift.model.souvenirBean;

public interface souvenirRepository extends JpaRepository<souvenirBean, Integer> {
	
	//find All data
//	@Query(value = "select * from souvenirBean",nativeQuery = true)
//	public List<souvenirBean> findAll(); 
	
	//find by souvenir_id
//	public List<souvenirBean> findBySid(Integer sid);
//	
	//save data
//	public souvenirBean save(souvenirBean bean);
	
	//delete data
	
	
	//update data
	
	/*
	 void deleteById(int souvenir_id);
	// 依bookId來查詢單筆記錄
	souvenirBean findById(int souvenir_id);
	
//		// 新增一筆記錄
	souvenirBean save(souvenirBean bean);

	souvenirBean updateSouvenir(souvenirBean bean) ;
	int updateSouvenir(souvenirBean bean, long sizeInBytes) ;
	
	List<souvenirBean> findByAll();
	 */
	
	
}
