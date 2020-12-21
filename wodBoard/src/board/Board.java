package board;

public class Board {
	private int boardID;//인덱스num
	private String boardTitle;//와드이름?
	private String userID; //id
	private String boardData; //날짜
	private String boardContent; //내용
	private int boardPage; //페이지 처리?
	private int Dead;
	private int Press;
	private int squat;
	
	public int getBoardID() {
		return boardID;
	}
	public void setBoardID(int boardID) {
		this.boardID = boardID;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getBoardData() {
		return boardData;
	}
	public void setBoardData(String boardData) {
		this.boardData = boardData;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public int getBoardPage() {
		return boardPage;
	}
	public void setBoardPage(int boardPage) {
		this.boardPage = boardPage;
	}
	public int getDead() {
		return Dead;
	}
	public void setDead(int dead) {
		Dead = dead;
	}
	public int getPress() {
		return Press;
	}
	public void setPress(int press) {
		Press = press;
	}
	public int getSquat() {
		return squat;
	}
	public void setSquat(int squat) {
		this.squat = squat;
	}
	
}
