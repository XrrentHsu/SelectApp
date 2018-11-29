//
//  ViewController.swift
//  hw2
//
//  Created by User04 on 2018/11/20.
//  Copyright © 2018 User04. All rights reserved.
//

import UIKit
struct questionStruct {
    var question:String
    var choose:[String]=[]
    var answer:Int
    var selected:Bool
}

class ViewController: UIViewController {

    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var buttonRE: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    var count=1
    var score=0
    var timer=Timer()
    var timerCount=10
    var questionArrayBox:[questionStruct]=[]
    var randomQuestion:[questionStruct]=[]
    func setQuestionBox(){
        /*1*/questionArrayBox.append(questionStruct(question:"”只要有恆心”的下一句是什麼？", choose:["必定有錢剩","鐵柱磨成針","天下無敵人","點石可成金"], answer: 2, selected:false))
        /*2*/questionArrayBox.append(questionStruct(question:"《聊齋志異》的作者是誰？", choose:["曹雪芹","蒲松齡","施耐庵","笑笑生"], answer: 2, selected:false))
        /*3*/questionArrayBox.append(questionStruct(question:"提出著名的韋達公式的數學家韋達，是哪國人？", choose:["英國","法國","德國","俄國"], answer: 2, selected:false))
        /*4*/questionArrayBox.append(questionStruct(question:"Windows .Net技術的核心是什麼？", choose:["提供電子商務","實現分布式計算","新開主頁更方便","提供額外的網絡安全性"], answer: 1, selected:false))
        /*5*/questionArrayBox.append(questionStruct(question:"《嘗試集》的作者是誰？", choose:["魯迅","胡適","郭沫若","朱志清"], answer:2, selected:false))
        /*6*/questionArrayBox.append(questionStruct(question:"“法律面前人人平等”是什麼人最先提出來的？", choose:["中國人","法國人","英國人","美國人"], answer: 2, selected:false))
        /*7*/questionArrayBox.append(questionStruct(question:"鐵達尼號游輪是哪一年沉沒的？", choose:["1910年","1911年","1912年","1913年"], answer: 3, selected:false))
        /*8*/questionArrayBox.append(questionStruct(question:"2002世界杯韓國同意大利的比賽中誰頂入了一個金球？", choose:["樸智星","安貞煥","崔龍洙","金泰映"], answer: 2, selected:false))
        /*9*/questionArrayBox.append(questionStruct(question:"四大名亭中的陶然亭是因為誰的詩句得名的？", choose:["歐陽修","白居易","陶淵明","杜牧"], answer: 2, selected:false))
        /*10*/questionArrayBox.append(questionStruct(question:"人的五感中那個感覺反應最快？", choose:["嗅覺","視覺","聽覺","味覺"], answer: 4, selected:false))
        /*11*/questionArrayBox.append(questionStruct(question:"下列官名中那個不是唐朝的官名？", choose:["尚書","黃門","巡按","殿中"], answer: 4, selected:false))
        /*12*/questionArrayBox.append(questionStruct(question:"世界上最早的銀行始建於哪個國家？", choose:["義大利","美國","法國","瑞士"], answer: 1, selected:false))
        /*13*/questionArrayBox.append(questionStruct(question:"一個帝王陵區只有一個主神道，一般修在誰的陵前？", choose:["第一個埋葬者","年齡最大者","統治時間最長者","國力最昌盛者"], answer: 1, selected:false))
        /*14*/questionArrayBox.append(questionStruct(question:"古人說的“酢”指的是今天的？", choose:["醬油","豆油","醋","酒"], answer: 3, selected:false))
        /*15*/questionArrayBox.append(questionStruct(question:"人體最大的解毒器官是？", choose:["胃","腎","肝","脾"], answer: 3, selected:false))
        /*16*/questionArrayBox.append(questionStruct(question:"下列哪個是酒類廣告中不應出現的內容？", choose:["倡導人們飲酒","飲酒後的表情","未成年人飲酒　","駕駛汽車"], answer: 4, selected:false))
        /*17*/questionArrayBox.append(questionStruct(question:"孔泰發明的現在通用的鉛筆是由石墨和什麼混合制成的？", choose:["鉛粉","粘土","松香","硫磺"], answer: 2, selected:false))
        /*18*/questionArrayBox.append(questionStruct(question:"如果把一個成人的全部血管連接起來，其長度接近多少公里？", choose:["10公里","1000公里","10000公里","10萬公里"], answer: 4, selected:false))
        /*19*/questionArrayBox.append(questionStruct(question:"促進人體胃腸吸收鈣的重要物質是?", choose:["維生素A","維生素B","維生素C","維生素D"], answer: 4, selected:false))
        /*20*/questionArrayBox.append(questionStruct(question:"在世界上首創用湯藥治病的是？", choose:["孫思邈","扁鵲","李時珍","伊尹"], answer: 4, selected:false))
        questionArrayBox.append(questionStruct(question:"中國第一座佛教寺院是哪一座？", choose:["北京潭柘寺","洛陽白馬寺","五台山清涼寺","蒿山少林寺"], answer: 2, selected:false))
        questionArrayBox.append(questionStruct(question:"最古老的醫院是設在？", choose:["學校裡" ,"教堂裡" ,"宮廷裡","集市裡"], answer: 2, selected:false))
        questionArrayBox.append(questionStruct(question:"被稱為“英雄樹”的是哪種植物？", choose:["龍眼","木棉","富貴菊","蓮花"], answer: 2, selected:false))
        questionArrayBox.append(questionStruct(question:"中國的傳統手工藝---景泰藍在哪一歷史時期發展最快？", choose:["明景泰年間","明宣德年間","明萬歷年間","清康熙年間"], answer:1, selected:false))
        questionArrayBox.append(questionStruct(question:"“景泰藍”是何地的特種工藝？", choose:["北京","上海","南京","杭州"], answer: 1, selected:false))
        questionArrayBox.append(questionStruct(question:"貝多芬一生創作了多少首鋼琴奏鳴曲？", choose:["27","28","32","45"], answer: 3, selected:false))
        questionArrayBox.append(questionStruct(question:"公元前594年，實行“初稅畝”，按畝收稅的國家是？", choose:["楚國","魯國","鄭國","魏國"], answer: 2, selected:false))
        questionArrayBox.append(questionStruct(question:"青蛙除了用肺外還用什麼器官呼吸？", choose:["肌肉","皮膚","脾臟","腮"], answer: 2, selected:false))
        questionArrayBox.append(questionStruct(question:"科學家把豬、牛、羊、馬一起關在施放了有毒氯氣的環境中作試驗，它們中誰逃脫了厄運？", choose:["豬","牛","羊","馬"], answer: 1, selected:false))
        questionArrayBox.append(questionStruct(question:"“何處招魂，香草還生三戶地；當年呵壁，湘流應識九歌心”，這幅對聯說的是？", choose:["賈誼","諸葛亮","屈原","文天祥"], answer: 3, selected:false))
        questionArrayBox.append(questionStruct(question:"“似曾相識燕歸來”的上一句是?", choose:["無可奈何花落去","相逢一笑泯恩仇","東邊日出西邊雨","雙手推開床前月"], answer: 1, selected:false))
        questionArrayBox.append(questionStruct(question:"七大洲中面積最小的是？", choose:["非洲","大洋洲","南極洲","北美洲"], answer: 3, selected:false))
        questionArrayBox.append(questionStruct(question:"“五岳”中的南岳指？", choose:["衡山","恆山","泰山","華山"], answer: 1, selected:false))
        questionArrayBox.append(questionStruct(question:"“千湖之國”芬蘭大約有多少個湖泊？", choose:["1萬","3萬","5萬","6萬"], answer: 4, selected:false))
        questionArrayBox.append(questionStruct(question:"“鮮花之國”是哪個國家？", choose:["中國 ","澳大利亞","加拿大","荷蘭"], answer: 4, selected:false))
        
    }
    func ramdomNumber()
    {
        while  randomQuestion.count<=10{
            
            let number = Int.random(in: 0...questionArrayBox.count-1)
            if(questionArrayBox[number].selected==false){
            randomQuestion.append(questionArrayBox[number])
            questionArrayBox[number].selected=true
            }
        }
        print(randomQuestion)
        
    }
     func setQuestion()
     {
        questionNumber.text="Q"+String(count)+"."
        questionLabel.text=randomQuestion[count-1].question
        buttonA.setTitle(randomQuestion[count-1].choose[0], for:UIControl.State.normal)
        buttonB.setTitle(randomQuestion[count-1].choose[1], for:UIControl.State.normal)
        buttonC.setTitle(randomQuestion[count-1].choose[2], for:UIControl.State.normal)
        buttonD.setTitle(randomQuestion[count-1].choose[3], for:UIControl.State.normal)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setQuestionBox()
        ramdomNumber()
        
        setQuestion()
        
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
         if((sender==buttonA&&randomQuestion[count-1].answer==1)||(sender==buttonB&&randomQuestion[count-1].answer==2)||(sender==buttonC&&randomQuestion[count-1].answer==3)||(sender==buttonD&&randomQuestion[count-1].answer==4))
        {
            
            score = score + 10
            pointLabel.text="Point:"+String(score)
        }
        
         timerCount=10;
        count=count+1
        //設定下一題的題目 題號
        if (count<=10){
           setQuestion()
        }
        else{
            buttonA.isEnabled=false
            buttonB.isEnabled=false
            buttonC.isEnabled=false
            buttonD.isEnabled=false
            buttonRE.isEnabled=true
            buttonRE.isHidden=false
        }
    }
    
    @IBAction func restartClick(_ sender: Any) {
        for i in (0...questionArrayBox.count-1) {
            questionArrayBox[i].selected=false
        }
        randomQuestion.removeAll()
        ramdomNumber()
        count=1
        setQuestion()
        score=0;
        pointLabel.text="Point:"+String(score)
        buttonA.isEnabled=true
        buttonB.isEnabled=true
        buttonC.isEnabled=true
        buttonD.isEnabled=true
        buttonRE.isEnabled=false
        buttonRE.isHidden=true
    }
}
