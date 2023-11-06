package controller;

import java.util.ArrayList;
import java.util.Arrays;

import model.dao.GameDao;
import model.dto.GameDto;
import view.GameView;
import view.MainView;

public class GameController {
	// 싱글톤 생성
	private static GameController gameController = new GameController();

	public static GameController getInstance() {
		return gameController;
	}

	private GameController() {
	}

	
	// 0.보기 카드 7장씩 뽑기
	// 귤
	public ArrayList<GameDto> sampleCard() {
		//System.out.println("컨트롤러연동");
		ArrayList<GameDto> result = GameDao.getInstance().sampleCard();
		for (int i = 0; i < result.size(); i++) {
			// System.out.println("리절트 겟 3 : "+result.get(i).getCname());
			if (result.get(i).getTno() == 1) { // tno 1이면 용의자 카드배열에 넣기
				GameDto.getHumanCard().add(result.get(i).getCname());
			} else if (result.get(i).getTno() == 2) { // tno 2이면 도구 카드배열에 넣기
				GameDto.getItemCard().add(result.get(i).getCname());
			} else if (result.get(i).getTno() == 3) { // tno 3이면 동기 카드배열에 넣기
				GameDto.getMotiveCard().add(result.get(i).getCname());
			}
		} // for end
		answerRandom(); // 정답 랜덤 뽑기 함수 실행
		hintSplit(); // 힌트 분류 함수 실행
		hintRandom(); // 1라운드 힌트 뽑기 함수 실행
		//System.out.println("1범인카드"+ GameDto.getHumanCard());
		//System.out.println("2도구카드"+ GameDto.getItemCard());
		//System.out.println("3동기카드"+ GameDto.getMotiveCard());
		return result;
	}

	// 1.정답 카드 난수뽑기
	// 귤
	public ArrayList<String> answerRandom() {
		for (int i = 1; i <= 3; i++) {
			int random = (int) ((Math.random() * 10000) % 7);
			if (i == 1) { // 범인카드 랜덤뽑아서 정답 배열에 넣기
				GameDto.getAnswerCard().add(GameDto.getHumanCard().get(random));
				// System.out.println(random);
			} else if (i == 2) { // 도구카드 랜덤뽑아서 정답 배열에 넣기
				GameDto.getAnswerCard().add(GameDto.getItemCard().get(random));
			} else if (i == 3) { // 동기카드 랜덤뽑아서 정답 배열에 넣기
				GameDto.getAnswerCard().add(GameDto.getMotiveCard().get(random));
			}
		} // for end
			// System.out.println(answerCard);
		return GameDto.getAnswerCard();
	}
	
	// 2. 1라운드 힌트분류
	// 귤
	public void hintSplit() {
		for (int i = 0; i < GameDto.getAnswerCard().size(); i++) { // 정답카드의 힌트들만 불러오기
			String hintSample = GameDto.getAnswerCard().get(i); // 정답카드 객체의 0,1,2번째 인덱스
			// System.out.println("정답샘플" + hintSample);
			ArrayList<GameDto> result = GameDao.getInstance().hintSplit(hintSample);
			// System.out.println("리절트"+result.get(0)); // [cardNames=[null, null, null,
			// null], tno=1, cno=1, cname=가수, hno=1, hname=입, htype=n]
			// System.out.println(result.get(i).getHtype().equals("n"));
			ArrayList<String> humanA = GameDto.getHumanhintA();
			ArrayList<String> humanN = GameDto.getHumanhintN();
			ArrayList<String> itemA = GameDto.getItemhintA();
			ArrayList<String> itemN = GameDto.getItemhintN();
			ArrayList<String> motiveA = GameDto.getMotivehintA();
			ArrayList<String> motiveN = GameDto.getMotivehintN();

			for (int j = 0; j < result.size(); j++){
				// System.out.println("리절트 겟 제이 : " +result.get(j));
				if (result.get(i).getCno() == 1 && result.get(j).getHtype().equals("a")) { // 카테고리1번이면서 힌트타입 a면 용의자형용사																	// 배열에 추가
					humanA.add(result.get(j).getHname());
				} else if (result.get(i).getCno() == 1 && result.get(j).getHtype().equals("n")) {
					humanN.add(result.get(j).getHname());
				}
				if (result.get(i).getCno() == 2 && result.get(j).getHtype().equals("a")) {
					itemA.add(result.get(j).getHname());
				} else if (result.get(i).getCno() == 2 && result.get(j).getHtype().equals("n")) {
					itemN.add(result.get(j).getHname());
				}
				if (result.get(i).getCno() == 3 && result.get(j).getHtype().equals("a")) {
					motiveA.add(result.get(j).getHname());
				} else if (result.get(i).getCno() == 3 && result.get(j).getHtype().equals("n")) {
					motiveN.add(result.get(j).getHname());
				}
			} // for2 end

			// 라운드2,3에 쓰일 힌트 배열 미리 넣어두기
			for ( int k=0; k<result.size();k++) {
				GameDto.getHintRound2().add(result.get(k).getHname());
			} // for 3 end
		} // for end
	}
	
	// 1라운드 힌트 난수뽑기
	// 귤
	public void hintRandom() {
		ArrayList<String> hintR1 = GameDto.getHintRound1();
		// 힌트 형용사, 명사 1개씩 뽑기
		int random = (int) ((Math.random() * 10000) % (GameDto.getHumanhintA().size()));
		hintR1.add(GameDto.getHumanhintA().get(random));
		random = (int) ((Math.random() * 10000) % (GameDto.getHumanhintN().size()));
		hintR1.add(GameDto.getHumanhintN().get(random));
		random = (int) ((Math.random() * 10000) % (GameDto.getItemhintA().size()));
		hintR1.add(GameDto.getItemhintA().get(random));
		random = (int) ((Math.random() * 10000) % (GameDto.getItemhintN().size()));
		hintR1.add(GameDto.getItemhintN().get(random));
		random = (int) ((Math.random() * 10000) % (GameDto.getMotivehintA().size()));
		hintR1.add(GameDto.getMotivehintA().get(random));
		random = (int) ((Math.random() * 10000) % (GameDto.getMotivehintN().size()));
		hintR1.add(GameDto.getMotivehintN().get(random));
	}
	
	static String hintBonus = "";
	// 2,3라운드 추가 힌트 뽑는 함수
	// 귤
	public static String hintRandomAdd() {
		
		int random = (int) ((Math.random() * 10000) % 3);
		//System.out.println("hintRandomAdd : "+random);
	
		if(random ==0) {
			int random2 = (int) ((Math.random() * 10000) % (GameDto.getHumanhintN().size()));
			//System.out.println("인간힌트배열 : "+random2);
			//System.out.println("인간힌트배열 그 값 : "+GameDto.getHumanhintN().get(random2));
			hintBonus = (GameDto.getHumanhintN().get(random2));
		} else if (random ==1) {
			int random2 = (int) ((Math.random() * 10000) % (GameDto.getItemhintN().size()));
			//System.out.println("도구힌트배열 : "+random2);
			//System.out.println("도구힌트배열 그 값 : "+GameDto.getItemhintN().get(random2));
			hintBonus = (GameDto.getItemhintN().get(random2));
		}else if (random ==2) {
			int random2 = (int) ((Math.random() * 10000) % (GameDto.getMotivehintN().size()));
			//System.out.println("동기힌트배열 : "+random2);
			//System.out.println("동기힌트배열 그 값 : "+GameDto.getMotivehintN().get(random2));
			hintBonus = (GameDto.getMotivehintN().get(random2));
		}
		return hintBonus;

	}
	
	// 2,3라운드 뽑은 추가 힌트 분류해서 리턴해주는 함수
	// 귤
	public static int hint2split() {
		String result = hintBonus; // 랜덤으로 뽑은 힌트 변수 불러와서 분류
		//System.out.println("힌트두번째랜덤" +result);
		for ( int i =0; i<GameDto.getHumanhintA().size(); i++) {
			if(result.equals(GameDto.getHumanhintA().get(i))){ // 만약에 힌트2와 힌트A에 있으면...
				return 1; // 추가힌트는 범인 형용사 힌트임
			}
		}
		for ( int i =0; i<GameDto.getHumanhintN().size(); i++) {
			if(result.equals(GameDto.getHumanhintN().get(i))){ // 만약에 힌트2와 힌트N에 있으면...
				return 2; // 추가힌트는 범인 명사 힌트임
			}
		}
		for ( int i =0; i<GameDto.getItemhintA().size(); i++) {
			if(result.equals(GameDto.getItemhintA().get(i))){ // 만약에 힌트2와 힌트A에 있으면...
				return 3; // 추가힌트는 도구 형용사 힌트임
			}
		}
		for ( int i =0; i<GameDto.getItemhintN().size(); i++) {
			if(result.equals(GameDto.getItemhintN().get(i))){ // 만약에 힌트2와 힌트N에 있으면...
				return 4; // 추가힌트는 도구 명사 힌트임
			}
		}
		for ( int i =0; i<GameDto.getMotivehintA().size(); i++) {
			if(result.equals(GameDto.getMotivehintA().get(i))){ // 만약에 힌트2와 힌트A에 있으면...
				return 5; // 추가힌트는 동기 형용사 힌트임
			}
		}
		for ( int i =0; i<GameDto.getMotivehintN().size(); i++) {
			if(result.equals(GameDto.getMotivehintN().get(i))){ // 만약에 힌트2와 힌트N에 있으면...
				return 6; // 추가힌트는 동기 명사 힌트임
			}
		}
		return 0; // 아무것도 없으면 걍 0반환
	}
	
		
	// 3. 목숨 차감 함수
	// 작성자 : 황태웅
	public static int countHeart() {
		int 남은목숨 = GameDto.getHeart(); // 현재의 heart 값을 가져옴
		남은목숨 -= 1; // 1을 감소시킴
		GameDto.setHeart(남은목숨);
		System.out.println("남은 목숨 : " + 남은목숨);
		if (남은목숨 == 0) {
			System.out.println("남은 목숨이 없습니다.");
			System.out.println("- GAME OVER -");
			gameEnd();
		}
		return 남은목숨;
	}
	
	
	// 4. 제외 판단 함수
	// 작성자 : 황태웅
	public static void exceptCard() {
		String[] cardNames = GameDto.getCardNames();
		boolean result = judge(); //

		
		if (result) {
			System.out.println("");
			System.out.println("카드 제외에 성공하였습니다. 다음 라운드로 넘어갑니다.");
			removeCardsByNames();
			int 라운드 = GameDto.getRound();
			라운드 += 1; // 라운드 1 증가
			GameDto.setRound(라운드);
			if( 라운드 == 2 ) { GameView.getInstance().printCardNames2();}
			if( 라운드 == 3 ) { GameView.getInstance().printCardNames3();}
			String printHintBonus = hintRandomAdd(); // 랜덤으로 뽑은 보너스 힌트를 저장하고있음
			//System.out.println(hint2split() + printHintBonus); // 보너스힌트 출력
			
		} else {
			System.out.println("사용자가 입력한 카드와 정답카드에 일치하는 카드가 있습니다.");
			countHeart();
			 // 사용자에게 입력받는 cardNames 배열 초기화
		    String[] emptyCardNames = new String[cardNames.length];
		    GameDto.setCardNames(emptyCardNames);
		    GameView.inputCard();	
		}

	}
	
	// 카드 제외 함수
	// 작성자 : 황태웅
	public static void removeCardsByNames() {
	    String[] cardNames = GameDto.getCardNames();

	    for (String cardName : cardNames) {
	        if (GameDto.getHumanCard().contains(cardName)) {
	            GameDto.getHumanCard().remove(cardName);
	        }
	        if (GameDto.getItemCard().contains(cardName)) {
	            GameDto.getItemCard().remove(cardName);
	        }
	        if (GameDto.getMotiveCard().contains(cardName)) {
	            GameDto.getMotiveCard().remove(cardName);
	        }
	    }

	    // 사용자에게 입력받는 cardNames 배열 초기화
	    String[] emptyCardNames = new String[cardNames.length];
	    GameDto.setCardNames(emptyCardNames);
	}

	// 제외 가능한지 판단 함수
	// 작성자 : 황태웅
	public static boolean judge() {
		for (String userCard : GameDto.getCardNames()) {
			for (String answerCard : GameDto.getAnswerCard()) {
				if (userCard.equals(answerCard)) {

					return false; // 사용자가 입력한 카드와 정답카드에 일치하는 카드가 있으면 False 반환
				}
			}
		}
		return true; // 일치하는 카드가 없으면 True 반환
	}
	
	
    public static boolean judgeAnswer() {
        boolean allMatch = true;
        String[] answers = GameDto.getAnswers();
        ArrayList<String> answerCard  = GameDto.getAnswerCard();
          
         for ( int i = 0 ; i< answers.length ; i ++ ) {
             String answer = answers[i];
             
                 if (!answer.equals( answerCard.get(i) ) ) {
                     allMatch = false;
                     break; // 하나라도 일치하지 않으면 루프 중단
                 }
         }
          if (allMatch) {
              return true; // 사용자가 입력한 카드와 정답카드 모두 일치하는 경우
          }

         return false; // 모든 가능한 정답 카드와 비교 후에도 일치하지 않는 경우
     }

	// 정답 확인 함수
	// 작성자 : 황태웅
	public static void checkAnswer() {
		boolean result = judgeAnswer();

		if (result) {
			System.out.println("");
			System.out.println("▶▶ 정답 입니다! 게임에서 승리하셨습니다. ◀◀");
			gameEnd();

		} else {
			System.err.println("▶▶ 오답 입니다. 정답을 다시 입력하세요. ◀◀");
			countHeart();
			
			// 정답 입력하는 배열 비워주기 
			String[] answers = GameDto.getAnswers();
			String[] emptyAnswers = new String[answers.length];
		    GameDto.setAnswers(emptyAnswers);
		    
			GameView.getInstance().inputAnswer();
		}
	}

	// 유효성 검사 함수
	// 작성자 : 황태웅
	public static boolean isValidCard(String cardName) {
		if (cardName == null) {
			return false;
		}
		// GameDto에 속하는지 검사
		boolean isValidDtoCard = GameDto.getHumanCard().contains(cardName) || GameDto.getItemCard().contains(cardName)
				|| GameDto.getMotiveCard().contains(cardName);
		// cardNames 배열에 포함되어있는지 검사
		boolean isCardNameInArray = Arrays.asList(GameDto.getCardNames()).contains(cardName);
		// 두 조건 모두 만족해야 유효한 카드로 판단
		return isValidDtoCard && !isCardNameInArray;
	}

	// 정답 유효성 검사 함수
	// 작성자 : 황태웅
	public static boolean isValidCard2(String cardName) {
		if (cardName == null) {
			return false;
		}
		// GameDto에 속하는지 검사
		boolean isValidDtoCard = GameDto.getHumanCard().contains(cardName) || GameDto.getItemCard().contains(cardName)
				|| GameDto.getMotiveCard().contains(cardName);
		// cardNames 배열에 포함되어있는지 검사
		boolean isCardNameInArray2 = Arrays.asList(GameDto.getAnswers()).contains(cardName);
		// 두 조건 모두 만족해야 유효한 카드로 판단
		return isValidDtoCard && !isCardNameInArray2;
	}

	// 게임 종료 함수
	// 작성자 : 황태웅
	public static void gameEnd() {
		System.out.println("초기화면으로 돌아갑니다.\n\n\n\n");
		GameDto.setHeart(3);
		GameDto.setRound(1);
		Arrays.fill(GameDto.getCardNames(), null);
		Arrays.fill(GameDto.getAnswers(), null);
		GameDto.getHumanCard().clear();
		GameDto.getItemCard().clear();
		GameDto.getMotiveCard().clear();
		GameDto.getAnswerCard().clear();
		GameDto.getHumanhintA().clear();
		GameDto.getHumanhintN().clear();
		GameDto.getItemhintA().clear();
		GameDto.getItemhintN().clear();
		GameDto.getMotivehintA().clear();
		GameDto.getMotivehintN().clear();
		GameDto.getHintRound1().clear();
		MainView.getInstance().mainPage();
	}
}