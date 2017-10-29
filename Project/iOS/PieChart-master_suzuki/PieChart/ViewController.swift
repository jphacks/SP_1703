//
//  ViewController.swift
//  PieChart

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pieChartView: PieChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // d[num]が変動
        // d[num]の合計が最大値を超えることがある．その逆も
        //
        let max_kcal = 2400.0 //1日に摂取できる最大のカロリー
        let element_number = 4 //1日に摂取したドリンクの本数
        let d1 = 120.0 / max_kcal * 360 //1本目のドリンクが占める摂取カロリーの割合
        let d2 = 100.0 / max_kcal * 360 //2本目のドリンクが占める摂取カロリーの割合
        let d3 = 80.0 / max_kcal * 360//3本目のドリンクが占める摂取カロリーの割合
        let d4 = 60.0 / max_kcal * 360//4本目のドリンクが占める摂取カロリーの割合
        

        //ここに，d[num]の合計が最大値を超える場合と，超えない場合で変数を追加するコードを書く
        
        // int配列
        //var array_kcal = [Double](count: 0,repeatedValue: element_number)
        var array_kcal = [d1, d2, d3, d4]
        
        
        var array_kcal_sum = [d1, d1+d2, d1+d2+d3, d1+d2+d3+d4] //
        
        var segments = [Segment]()
        segments.append(Segment(color: UIColor.red, angle: CGFloat(array_kcal_sum[0])))
        segments.append(Segment(color: UIColor.cyan, angle: CGFloat(array_kcal_sum[1])))
        segments.append(Segment(color: UIColor.green, angle: CGFloat(array_kcal_sum[2])))
        segments.append(Segment(color: UIColor.magenta, angle: CGFloat(array_kcal_sum[3])))
        //segments.append(Segment(color: UIColor.blue, angle: 345.0))
        //segments.append(Segment(color: UIColor.yellow, angle: 360.0))
        
        self.pieChartView.segments = segments
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

