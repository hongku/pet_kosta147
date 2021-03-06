package com.pet.model;

import java.util.List;

public interface ReserveDAO {
	
	//예약 목록 띄우기
	public List<ReserveDTO> selectReserve(ReserveDTO dto);
	
	//예약 추가하기
	public void insertReserve(ReserveDTO dto);
	
	//예약이 되어있는 시간 셀렉
	public List<ReserveDTO> select_available_time(ReserveDTO dto);
	
	//날짜별로 예약 목록 띄우기
	public List<ReserveDTO> dateSelectedReserve(ReserveDTO dto);
	
	//예약 상태 바꾸기(방문)
	public void changeStatusVisited(String reserve_code);
	
	//예약 상태 바꾸기(미방문)
	public void changeStatusNotVisited(String reserve_code);
	
	//예약 취소(삭제)하기
	public void deleteReserve(String reserve_code);
	
	//지난 예약 보기
	public List<ReserveDTO> passReservationList(ReserveDTO dto);
	
	//예약 수정 시 해당 예약 정보 뽑기
	public ReserveDTO getReserveInfo(ReserveDTO dto);
	
	//예약 수정
	public void updateReserve(ReserveDTO dto);

	// 전체 리스트 가져옴
	public List<ReserveDTO> reservationListAll(ReserveDTO reserveDTO) throws Exception;
	
	//방문 완료시 접수 자동등록위해 DTO에 입력
	public CounterDTO getReserveInfoForAccept(String reserve_code) throws Exception;
	
	//end출력 뽑기위해 startnum 뽑아오기
	public List<Integer> getStartNum(ReserveDTO reserveDTO) throws Exception;
	
}
