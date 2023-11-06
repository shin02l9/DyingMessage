package view;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

import controller.GameController;
import model.dao.GameDao;
import model.dto.GameDto;

public class GameView {
	// 싱글톤 생성
	private static GameView gameView = new GameView();

	public static GameView getInstance() {
		return gameView;
	}

	private GameView() {
	}

	
	// 귤 게임 카드 출력

	public void gameStart() {
		ArrayList<GameDto> result = GameController.getInstance().sampleCard();

		System.out.println("용의자 카드 => " + GameDto.getHumanCard());
		System.out.println("용의자 힌트 : " + GameDto.getHintRound1().get(0));
		System.out.println();
		System.out.println("도구 카드 => " + GameDto.getItemCard());
		System.out.println("도구 힌트 : " + GameDto.getHintRound1().get(2));
		System.out.println();
		System.out.println("동기 카드 => " + GameDto.getMotiveCard());
		System.out.println("동기 힌트 : " + GameDto.getHintRound1().get(4));
		System.out.println();
		inputCard();

	}

	// 2라운드 출력
	// 작성자 : 황태웅
	public static void printCardNames2() {
		System.out.println("");
		System.out.println("-------- 라운드2 -----------");
		System.out.println("용의자 카드 => " + GameDto.getHumanCard());
		System.out.println("용의자 힌트 : " + GameDto.getHintRound1().get(0));
		System.out.println("");
		System.out.println("도구 카드 => " + GameDto.getItemCard());
		System.out.println("도구 힌트 : " + GameDto.getHintRound1().get(2));
		System.out.println("");
		System.out.println("동기 카드 => " + GameDto.getMotiveCard());
		System.out.println("동기 힌트 : " + GameDto.getHintRound1().get(4));
		System.out.println("");
		String printHintBonus2 = GameController.hintRandomAdd(); // 랜덤으로 뽑은 보너스 힌트를 저장하고있음
		System.out.println("2라운드 보너스 힌트 - " + hint2split() + printHintBonus2+" >"); // 보너스힌트 출력
		System.out.println("");
		inputCard();
	}

	// 3라운드 출력
	// 작성자 : 황태웅
	public static void printCardNames3() {
		System.out.println("");
		System.out.println("-------- 최종 라운드 ----------");
		System.out.println("용의자 카드 => " + GameDto.getHumanCard());
		System.out.println("용의자 힌트 : " + GameDto.getHintRound1().get(0));
		System.out.println("");
		System.out.println("도구 카드 => " + GameDto.getItemCard());
		System.out.println("도구 힌트 : " + GameDto.getHintRound1().get(2));
		System.out.println("");
		System.out.println("동기 카드 => " + GameDto.getMotiveCard());
		System.out.println("동기 힌트 : " + GameDto.getHintRound1().get(4));
		System.out.println("");
		String printHintBonus3 = GameController.hintRandomAdd(); // 랜덤으로 뽑은 보너스 힌트를 저장하고있음
		System.out.println("3라운드 보너스 힌트 - " + hint2split() + printHintBonus3+" >"); // 보너스힌트 출력
		System.out.println("");
		inputAnswer();
	}

	// 2,3라운드 뽑은 추가 힌트 분류해서 리턴해주는 함수
	public static String hint2split() {
		GameController.getInstance();
		int result = GameController.hint2split();
		if (result == 1 || result == 2) {
			return "범인 추가 힌트 : < ";
		} else if (result == 3 || result == 4) {
			return "도구 추가 힌트 : < ";
		} else if (result == 5 || result == 6) {
			return "동기 추가 힌트 : < ";
		}
		return null;
	}
	
	// 제외할 카드 입력 함수
	// 작성자 : 황태웅
	public static void inputCard() {
		Scanner scanner = new Scanner(System.in);
		for (int i = 0; i < 4; i++) {
			System.out.print("제외할 카드 이름을 입력해주세요. " + (i + 1) + "번째 : ");
			String cardName = scanner.nextLine();
			boolean isvalidCard = GameController.isValidCard(cardName);
			if (isvalidCard) {
				GameDto.setCardName(i, cardName);
			} else {
				System.err.println(" 경고] 잘못된 입력입니다. 다시 입력해주세요. \n");
				i--; // 유효하지 않은 입력을 받았을 때는 다시 같은 인덱스로 입력받도록 하여 재입력을 유도
			}
		}
		GameController.judge();
		GameController.exceptCard();
	}
	
	// 정답 입력함수
	// 작성자 : 황태웅
	public static void inputAnswer() {
		// 사용자로부터 정답 카드를 입력받아 인덱스로 DTO에 String[] answers 배열에 저장
		Scanner scanner = new Scanner(System.in);
		System.out.println("");
		System.out.println("- 정답은 용의자 , 도구 , 동기 순으로 입력해주세요. -");
		System.out.println("");
		for (int i = 0; i < 3; i++) {
			System.out.print("정답 카드를 입력해주세요. " + (i + 1) + "번째 : ");
			String cardName = scanner.nextLine();
			boolean isvalidCard = GameController.isValidCard2(cardName);
			if (isvalidCard) {
				GameDto.setAnswers(i, cardName);
			} else {
				System.err.println(" 경고] 잘못된 입력입니다. 다시 입력해주세요. \n");
				i--; // 유효하지 않은 입력을 받았을 때는 다시 같은 인덱스로 입력받도록 하여 재입력을 유도
			}
		}
		GameController.judgeAnswer();
		GameController.checkAnswer();
	}

}