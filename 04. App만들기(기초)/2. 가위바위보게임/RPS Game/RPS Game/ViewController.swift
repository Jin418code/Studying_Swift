//
//  ViewController.swift
//  RPS Game
//
//  Created by JinHan Choi on 2022/06/01.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLable: UILabel!
    
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    // 컴퓨터의 랜덤 선택하는 변수
    var myChoice: Rps = Rps.rock
    // 아래 switch에서 나오는 결과를 저장하기 위해서 myChoice라는 변수를 만듦
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1) 첫번째/두번째 이미지뷰에 준비(묵) 이미지를 띄워야함
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        // 위 방법은 이미지를 직접 선택, 아래는 Assets에 들어있는 파일의 이름으로 선택하는 방법
        
        // 2) 첫번째/두번째 레이블에 "준비"라고 문자열을 띄워야함
        comChoiceLabel.text = "준비"
        myChoiceLable.text = "준비"
        
    }
    
    
    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 1) 가위/바위/보를 선택하고,
        // guard let title = sender.currentTitle else {
        //     return
        // }
        let title = sender.currentTitle!
        print(title)
        // .crrentTitle이 옵셔널타입이기 때문에 벗겨야함
        // 이경우 버튼의 이름이 있는게 확실하기 때문에 ! 강제추출해도 됨
        
        // 2) 그 정보를 저장해야함
        switch title {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper
        default:
            break
        }
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        // 2) 컴퓨터가 랜덤 선택한 것을 레이블에 표시
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.scissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        // 3) 내가 선택한 것을 이미지뷰에 표시
        // 4) 내가 선택한 것을 레이블에 표시
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLable.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLable.text = "보"
        case Rps.scissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLable.text = "가위"
        }
        
        // 5) 컴퓨터가 선택한 것과 내가 선택한 것을 비교해서 이겼는지/졌는지 판단/표시
        if comChoice == myChoice {
            mainLabel.text = "비겼다"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 컴퓨터가 다시 준비 이미지뷰에 표시
        // 2) 컴퓨터가 다시 준비 레이블에 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        // 3) 내 선택 이미지 뷰에도 준비 이미지를 표시
        // 4) 내 선택 레이블에도 준비 문자열 표시
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLable.text = "준비"
        // 5) 메인 레이블에 "선택하세요"를 다시 표시
        mainLabel.text = "선택하세요"
        // 6) 컴퓨터가 다시 랜덤 가위/바위/보를 선택하고 저장해야함
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
    
    
    
    
}



