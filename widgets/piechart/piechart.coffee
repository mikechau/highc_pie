class Dashing.Piechart extends Dashing.Widget

  ready: ->
    @chart = new Highcharts.Chart(
      legend:
        layout: 'vertical'
        align: 'left'
        verticalAlign: 'top'
        x: 0
        y: 0

      chart:
        renderTo: "HCcontainer"
        plotBackgroundColor: null
        plotBorderWidth: null
        plotShadow: false

      title:
        text: "Daily Indicators"

      tooltip: 
        pointFormat: "{series.name}: <b>{point.percentage}%</b>"
        percentageDecimals: 1

      plotOptions:
        pie:
          allowPointSelect: true
          cursor: "pointer"
          showInLegend: true
          dataLabels:
            enabled: false
            color: "#000000"
            connectorColor: "#000000"
            formatter: ->
              "<b>" + @point.name + "</b>: " + @percentage + " %"

      series: [
        type: "pie"
        name: "Indicators"
        data: [["REG", 1], ["CANC", 3], ["OSEQ", 2], ["CNCL", 2], ["LATE", 2], ["CNCO", 5], ["CNOL", 10], ["OPNL", 15], ["AUTO", 1], ["AJST", 1], ["SPRD", 2], ["STDL", 23], ["BWRT", 1], ["CMBO", 10], ["SPIM", 10], ["ISOI", 10]]
      ]
    )