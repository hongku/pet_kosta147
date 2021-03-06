package com.pet.model;

import java.util.List;

public interface OrderDAO {

	// 모든 발주 내역 출력
	public List<OrderDTO> selectAllOfOrder(OrderDTO orderDTO) throws Exception;
	
	// 세부 내용
	public OrderDTO selectDetailOrder(OrderDTO orderDTO) throws Exception;
	
	// 발주 승인, 배달 수령 여부 update
	public int updateOrder(OrderDTO orderDTO) throws Exception;

	// 발주 입력 insert
	public int insertOrder(OrderDTO orderDTO) throws Exception;

	// 발주 내역 삭제 delete
	public int deleteOrder(OrderDTO orderDTO) throws Exception;

}
