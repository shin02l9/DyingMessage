package model.dto;

import java.util.ArrayList;
import java.util.Arrays;

public class GameDto {

	// 1.필드

	// 사용자에게 입력받은 카드 저장하는 곳
	private static String[] cardNames = new String[4];
	// 정답 입력받아 저장하는곳
	private static String[] answers = new String[3];
	// 목숨 변수
	private static int heart = 3;
	// 라운드 변수
	private static int round = 1;

	// + 보기카드 7장씩 받기위한 필드
	private int tno;
	private int cno;
	private String cname;

	// + 힌트카드 받기위한 필드
	private int hno;
	private String hname;
	private String htype;


	// 범인 , 도구 , 동기 보기 카드 7개
	private static ArrayList<String> humanCard = new ArrayList<>();
	private static ArrayList<String> itemCard = new ArrayList<>();
	private static ArrayList<String> motiveCard = new ArrayList<>();

	// 정답 카드 배열
	private static ArrayList<String> answerCard = new ArrayList<>();

	// 정답 카드의 용의자 힌트 배열
	private static ArrayList<String> humanhintA = new ArrayList<>();
	private static ArrayList<String> humanhintN = new ArrayList<>();

	// 정답 카드의 도구 힌트 배열
	private static ArrayList<String> itemhintA = new ArrayList<>();
	private static ArrayList<String> itemhintN = new ArrayList<>();

	// 정답 카드의 동기 힌트 배열
	private static ArrayList<String> motivehintA = new ArrayList<>();
	private static ArrayList<String> motivehintN = new ArrayList<>();

	// 정답 카드의 1라운드 출력용 힌트 배열
	private static ArrayList<String> hintRound1 = new ArrayList<>();

	// 정답 카드의 2,3라운드 추가 힌트 배열
	private static ArrayList<String> hintRound2 = new ArrayList<>();
	
	// 2. 생성자
	public GameDto() {
	}

	// + 보기카드 7장씩 받기위한 생성자
	public GameDto(int tno, int cno, String cname) {
		super();
		this.tno = tno;
		this.cno = cno;
		this.cname = cname;
	}

	// + 힌트 불러오기 위한 생성자
	public GameDto(int tno, int cno, String cname, int hno, String hname, String htype) {
		super();
		this.tno = tno;
		this.cno = cno;
		this.cname = cname;
		this.hno = hno;
		this.hname = hname;
		this.htype = htype;
	}
	
	
	
	public static int getRound() {
		return round;
	}

	public static void setRound(int round) {
		GameDto.round = round;
	}

	// 3.메소드
	public static void setCardName(int index, String cardName) {
		cardNames[index] = cardName;
	}

	public static String[] getAnswers() {
		return answers;
	}

	public static void setAnswers(String[] answers) {
		GameDto.answers = answers;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public static String[] getCardNames() {
		return cardNames;
	}

	public static void setCardNames(String[] cardNames) {
	    GameDto.cardNames = cardNames;
	}

	public int getHno() {
		return hno;
	}

	public void setHno(int hno) {
		this.hno = hno;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}

	public String getHtype() {
		return htype;
	}

	public void setHtype(String htype) {
		this.htype = htype;
	}

	
	public static int getHeart() {
		return heart;
	}

	public static void setHeart(int heart) {
		GameDto.heart = heart;
	}

	public static ArrayList<String> getHumanCard() {
		return humanCard;
	}

	public static void setHumanCard(ArrayList<String> humanCard) {
		GameDto.humanCard = humanCard;
	}

	public static ArrayList<String> getItemCard() {
		return itemCard;
	}

	public static void setItemCard(ArrayList<String> itemCard) {
		GameDto.itemCard = itemCard;
	}

	public static ArrayList<String> getMotiveCard() {
		return motiveCard;
	}

	public static void setMotiveCard(ArrayList<String> motiveCard) {
		GameDto.motiveCard = motiveCard;
	}

	public static ArrayList<String> getAnswerCard() {
		return answerCard;
	}

	public static void setAnswerCard(ArrayList<String> answerCard) {
		GameDto.answerCard = answerCard;
	}

	public static ArrayList<String> getHumanhintA() {
		return humanhintA;
	}

	public static void setHumanhintA(ArrayList<String> humanhintA) {
		GameDto.humanhintA = humanhintA;
	}

	public static ArrayList<String> getHumanhintN() {
		return humanhintN;
	}

	public static void setHumanhintN(ArrayList<String> humanhintN) {
		GameDto.humanhintN = humanhintN;
	}

	public static ArrayList<String> getItemhintA() {
		return itemhintA;
	}

	public static void setItemhintA(ArrayList<String> itemhintA) {
		GameDto.itemhintA = itemhintA;
	}

	public static ArrayList<String> getItemhintN() {
		return itemhintN;
	}

	public static void setItemhintN(ArrayList<String> itemhintN) {
		GameDto.itemhintN = itemhintN;
	}

	public static ArrayList<String> getMotivehintA() {
		return motivehintA;
	}

	public static void setMotivehintA(ArrayList<String> motivehintA) {
		GameDto.motivehintA = motivehintA;
	}

	public static ArrayList<String> getMotivehintN() {
		return motivehintN;
	}

	public static void setMotivehintN(ArrayList<String> motivehintN) {
		GameDto.motivehintN = motivehintN;
	}

	public static ArrayList<String> getHintRound1() {
		return hintRound1;
	}

	public static void setHintRound1(ArrayList<String> hintRound1) {
		GameDto.hintRound1 = hintRound1;
	}
	
	public static ArrayList<String> getHintRound2() {
		return hintRound2;
	}

	public static void setHintRound2(ArrayList<String> hintRound2) {
		GameDto.hintRound2 = hintRound2;
	}

	@Override
	public String toString() {
		return "GameDto [cardNames=" + Arrays.toString(cardNames) + ", tno=" + tno + ", cno=" + cno + ", cname=" + cname
				+ ", hno=" + hno + ", hname=" + hname + ", htype=" + htype + "]";
	}

	public static void setAnswers(int index, String cardName) {
		answers[index] = cardName;
	}

}
