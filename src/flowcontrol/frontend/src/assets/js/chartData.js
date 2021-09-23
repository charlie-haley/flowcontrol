export default {
    type: 'line',
    data: {
      labels: [],
      datasets: [{
          label: '',
          data: [],
          fill: true,
          tension: 0,
          borderWidth: 1,
          pointHitRadius: 25
        }
      ]
    },
    options: {
        legend: {
            display: false
        },
        tooltips: {
            displayColors: false,
            enabled: false,
            callbacks: {
                title: function() {},
                label: function(tooltipItem) {
                       return tooltipItem.yLabel;
                }
             }
        },
      scales: {
        xAxes: [{
          ticks: {
              display: true,
              min: 15,
              max: 60,
              stepSize: 5
          }
      }],
        yAxes: [{
            ticks: {
                display: false,
                min: 0,
                max: 100,
                stepSize: 20
            }
        }]
      },
      dragData: true,
      dragX: false,
      dragDataRound: 0, // round to full integers (0 decimals)
      dragOptions: {
        // magnet: { // enable to stop dragging after a certain value
        //   to: Math.round
        // },
        showTooltip: true // Recommended. This will show the tooltip while the user 
        // drags the datapoint
      },
      onDrag: function (e) {
        // change cursor style to grabbing during drag action
        e.target.style.cursor = 'grabbing'
        // where e = event
      },
      onDragEnd: function (e) {
        // restore default cursor style upon drag release
        e.target.style.cursor = 'default'
        // where e = event
      },
      hover: {
        onHover: function(e) {
          // indicate that a datapoint is draggable by showing the 'grab' cursor when hovered
          const point = this.getElementAtEvent(e)
          if (point.length) e.target.style.cursor = 'grab'
          else e.target.style.cursor = 'default'
        }
      
      },
      annotation: {
        annotations: [{
          type: 'line',
          mode: 'vertical',
          scaleID: 'y-axis-0',
          borderColor: '#D32F2F',
          borderWidth: 2,
          label: {
            enabled: true,
            content: 'Current: 50c',
            backgroundColor: '#D32F2F'
          }
        }]
      },
      plugins: {
        dragData: {
          round: 1,
          showTooltip: true,
          onDrag: function(e) {              
            e.target.style.cursor = 'grabbing'
            // console.log(e, datasetIndex, index, value)
          },
          onDragEnd: function(e) {
            e.target.style.cursor = 'default' 
            // console.log(datasetIndex, index, value)
          },
        }
      }
    }
  }