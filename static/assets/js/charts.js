(function ($) {
  "use strict";
  var options1 = {
    series: [{ data: [20, 90, 48, 85, 65, 28, 49, 24, 50, 46, 59, 90, 67, 26, 82] }],
    colors: ["#fd961a"],
    chart: { type: "area", width: 100, height: 40, sparkline: { enabled: !0 } },
    plotOptions: { bar: { columnWidth: "50%" } },
    xaxis: { crosshairs: { width: 1 } },
    stroke: { show: true, curve: "smooth", lineCap: "butt", colors: undefined, width: 2, dashArray: 0 },
    tooltip: {
      fixed: { enabled: !1 },
      fillSeriesColor: true,
      x: { show: !1 },
      y: {
        title: {
          formatter: function (e) {
            return "";
          },
        },
      },
      marker: { show: !1 },
    },
    states: { hover: { filter: { type: "none", value: 0 } } },
  };

  var chart1 = new ApexCharts(document.querySelector("#chart1"), options1);
  chart1.render();
  var chart2 = new ApexCharts(document.querySelector("#chart2"), options1);
  chart2.render();
  var chart3 = new ApexCharts(document.querySelector("#chart3"), options1);
  chart3.render();
  var chart4 = new ApexCharts(document.querySelector("#chart4"), options1);
  chart4.render();
  var chart5 = new ApexCharts(document.querySelector("#chart5"), options1);
  chart5.render();
  var chart6 = new ApexCharts(document.querySelector("#chart6"), options1);
  chart6.render();
  var chart7 = new ApexCharts(document.querySelector("#chart7"), options1);
  chart7.render();
  var chart8 = new ApexCharts(document.querySelector("#chart8"), options1);
  chart8.render();
  var chart9 = new ApexCharts(document.querySelector("#chart9"), options1);
  chart9.render();
  var chart10 = new ApexCharts(document.querySelector("#chart10"), options1);
  chart10.render();
  var chart11 = new ApexCharts(document.querySelector("#chart11"), options1);
  chart11.render();
  var chart12 = new ApexCharts(document.querySelector("#chart12"), options1);
  chart12.render();
})(jQuery);
