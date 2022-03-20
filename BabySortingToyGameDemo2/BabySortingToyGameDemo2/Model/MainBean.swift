import SwiftUI

struct MainBean {
    let id: Int
    let title: String
    let content: String
    let imageUrl: String
}

extension MainBean {
    static let getData = [
        MainBean(id: 1, title: "雙人成行", content: "玩家必須扮演經常起爭執的夫妻科迪與小梅，2人因為魔法而變成了玩偶，且被困在一個充滿驚喜的奇幻世界中，不得不挽救他們之間的感情．．．", imageUrl: "https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2021/04/16/1/12104884.jpg&x=0&y=0&sw=0&sh=0&sl=W&fw=1050"),
        MainBean(id: 2, title: "死亡循環", content: "講述主角被困在時間會不斷循環的島上，必須同時擊殺8個指定角色才能逃出生天．．．", imageUrl: "https://p2.bahamut.com.tw/B/2KU/09/1264c56b94b1b3fe081b14e7f91d5lt5.JPG"),
        MainBean(id: 3, title: "世紀帝國4", content: "單機戰役也令人讚嘆，每道關卡都有超長過場影片，實地拍攝古代戰場目前的景象．．．", imageUrl: "https://s.newtalk.tw/album/news/590/60c83d76be808.jpg"),
        MainBean(id: 4, title: "阿爾宙斯", content: "劇情環繞寶可夢之神「阿爾宙斯」玩家將加入銀河隊當調查員，以探索並完成在地第一本寶可夢圖鑑為目標．．．", imageUrl: "https://image.gameapps.hk/images/202202/28/25f35ca5f54f34f0.jpg"),
        MainBean(id: 5, title: "Pummel Party", content: "本作允許1～8位玩家互相競爭，必須在大地圖上蒐集鑰匙購買「皇冠」，最後擁有最多皇冠的玩家就會獲得勝利．．．", imageUrl: "https://i.ytimg.com/vi/qakjkyQUxss/maxresdefault.jpg"),
        MainBean(id: 6, title: "崛起", content: "《崛起》以「忍者」的概念帶來空前的操作自由度，只要不是地圖或地形邊界，都能透過「翔蟲」技能自由自在地跑跳．．．", imageUrl: "https://sw.cool3c.com/user/104471/2022/9d7930dc-ae8d-4ae2-907b-037501573010.jpg"),
    ]
}
