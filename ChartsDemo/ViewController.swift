//
//  ViewController.swift
//  ChartsDemo
//
//  Created by Sree Lakshman on 14/09/22.
//

import UIKit
import Charts

class ViewController: UIViewController {
   
    @IBOutlet weak var chartView: LineChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setData()
        chartView.backgroundColor = .black
        chartView.rightAxis.enabled = false
        
//         Setup y-Axis
        let yAxis = chartView.leftAxis
        yAxis.labelFont = .boldSystemFont(ofSize: 12)
        yAxis.labelTextColor = .white
        yAxis.setLabelCount(6, force: false)
        yAxis.labelPosition = .outsideChart

//         Setup x-Axis
        chartView.xAxis.labelPosition = .bottom
        chartView.xAxis.labelFont = .boldSystemFont(ofSize: 12)
        chartView.xAxis.setLabelCount(6, force: false)
        chartView.xAxis.drawGridLinesEnabled = false
        chartView.xAxis.labelTextColor = .white
        
//        animation
//      chartView.animate(xAxisDuration: 2.5)
        chartView.animate(xAxisDuration: 2.5, yAxisDuration: 2.5)
        
        chartView.legend.textColor = .white
        chartView.chartDescription.font = .systemFont(ofSize: 10, weight: .bold)
        chartView.chartDescription.textColor = .white
        chartView.chartDescription.text = "y-Axis: invite rate(%) | x-Axis: weeks"

        
        
    }
    
    func setData() {
        let set1 = LineChartDataSet(entries: values1, label: "Server Team")
        set1.mode = .linear
        set1.lineWidth = 2
        set1.drawCirclesEnabled = true
        set1.circleRadius = 3
        set1.setCircleColors(.white)
        set1.drawFilledEnabled = true
        set1.fillColor = .gray
        set1.fillAlpha  = 0.6
        set1.drawValuesEnabled = false
        set1.setColor(.lightGray)
        set1.drawHorizontalHighlightIndicatorEnabled = false
        set1.highlightColor = .red
        
//        set1.fillFormatter = DefaultFillFormatter { _,_  -> CGFloat in
//            return CGFloat(self.chartView.leftAxis.axisMinimum)
//        }

        let set2 = LineChartDataSet(entries: values2, label: "Your Performance")
        set2.mode = .linear
        set2.lineWidth = 2
        set2.drawCirclesEnabled = true
        set2.circleRadius = 3
        set2.setCircleColors(.yellow)
        set2.drawFilledEnabled = true
        set2.fillColor = .brown
        set2.fillAlpha  = 0.5
        set2.drawValuesEnabled = false
        set2.setColor(.orange)
        set2.drawHorizontalHighlightIndicatorEnabled = false
        set2.highlightColor = .red
        
//        set2.fillFormatter = DefaultFillFormatter { _,_  -> CGFloat in
//            return CGFloat(self.chartView.leftAxis.axisMaximum)
//        }
        
        let data = LineChartData(dataSets:[set1,set2])
//      let data = LineChartData(dataSet:set1)
        chartView.data = data
    }
        
    let values1: [ChartDataEntry] = [
        ChartDataEntry(x: 0.0, y: 10.0),
        ChartDataEntry(x: 1.0, y: 5.0),
        ChartDataEntry(x: 2.0, y: 12.0),
        ChartDataEntry(x: 3.0, y: 7.0),
        ChartDataEntry(x: 4.0, y: 1.0),
        ChartDataEntry(x: 5.0, y: 11.0),
        ChartDataEntry(x: 6.0, y: 20.0),
        ChartDataEntry(x: 7.0, y: 3.0),
        ChartDataEntry(x: 8.0, y: 15.0),
        ChartDataEntry(x: 9.0, y: 0.0),
        ChartDataEntry(x: 10.0, y: 8.0),
        ChartDataEntry(x: 12.0, y: 10.0),
        ChartDataEntry(x: 13.0, y: 18.0),
        ChartDataEntry(x: 14.0, y: 9.0),
        ChartDataEntry(x: 15.0, y: 6.0)]
    
    let values2: [ChartDataEntry] = [
        ChartDataEntry(x: 0.0, y: 14.0),
        ChartDataEntry(x: 2.0, y: 2.0),
        ChartDataEntry(x: 3.0, y: 10.0),
        ChartDataEntry(x: 4.0, y: 10.0),
        ChartDataEntry(x: 5.0, y: 5.0),
        ChartDataEntry(x: 6.0, y: 12.0),
        ChartDataEntry(x: 7.0, y: 7.0),
        ChartDataEntry(x: 8.0, y: 1.0),
        ChartDataEntry(x: 9.0, y: 11.0),
        ChartDataEntry(x: 10.0, y: 20.0),
        ChartDataEntry(x: 11.0, y: 3.0),
        ChartDataEntry(x: 12.0, y: 15.0),
        ChartDataEntry(x: 13.0, y: 0.0),
        ChartDataEntry(x: 14.0, y: 8.0),
        ChartDataEntry(x: 15.0, y: 10.0)]
    
}

