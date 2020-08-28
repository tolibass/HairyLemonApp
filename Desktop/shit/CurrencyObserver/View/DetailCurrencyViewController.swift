//
//  DetailCurrencyViewController.swift
//  CurrencyObserver
//
//  Created by Anatoliy on 19.08.2020.
//  Copyright © 2020 Mamchenko.Develop. All rights reserved.
//

import UIKit
import Charts

class DetailCurrencyViewController: UIViewController, DetailCuurencyProtocol, ChartViewDelegate {
    
    var presenter : DetailCurrencyPresenter?
    
    @IBOutlet weak var detailChartView: LineChartView!
    @IBOutlet weak var nameLable: UILabel!
    
    var nameLableResult : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = DetailCurrencyPresenter(controller: self)
        
        self.title = "Cubic Line Chart"
        
       

        detailChartView.delegate = self

        detailChartView.setViewPortOffsets(left: 0, top: 20, right: 0, bottom: 0)
        detailChartView.backgroundColor = UIColor(red: 104/255, green: 241/255, blue: 175/255, alpha: 1)
        
        detailChartView.dragEnabled = true
        detailChartView.setScaleEnabled(true)
        detailChartView.pinchZoomEnabled = false
        detailChartView.maxHighlightDistance = 300
        
        detailChartView.xAxis.enabled = false
        
        let yAxis = detailChartView.leftAxis
        yAxis.labelFont = UIFont(name: "HelveticaNeue-Light", size:12)!
        yAxis.setLabelCount(6, force: false)
        yAxis.labelTextColor = .white
        yAxis.labelPosition = .insideChart
        yAxis.axisLineColor = .white
        
        detailChartView.rightAxis.enabled = false
        detailChartView.legend.enabled = false
        
        
        
        detailChartView.animate(xAxisDuration: 2, yAxisDuration: 2)
        
        setDataCount(20, range: 50)
        
    }
    
    
    
    func setDataCount(_ count: Int, range: UInt32) {
        let yVals1 = (0..<count).map { (i) -> ChartDataEntry in
            let mult = range + 1
            let val = Double(arc4random_uniform(mult) + 20)
            return ChartDataEntry(x: Double(i), y: val)
        }
        let set1 = LineChartDataSet(entries: yVals1, label: "DataSet 1")
            set1.mode = .cubicBezier
            set1.drawCirclesEnabled = false
            set1.lineWidth = 1.8
            set1.circleRadius = 4
            set1.setCircleColor(.white)
            set1.highlightColor = UIColor(red: 244/255, green: 117/255, blue: 117/255, alpha: 1)
            set1.fillColor = .white
            set1.fillAlpha = 1
            set1.drawHorizontalHighlightIndicatorEnabled = false
            
            
            let data = LineChartData(dataSet: set1)
            data.setValueFont(UIFont(name: "HelveticaNeue-Light", size: 9)!)
            data.setDrawValues(false)
            
            detailChartView.data = data
        }
    

    

}
