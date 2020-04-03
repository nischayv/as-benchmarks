import { mean } from 'stats-lite'
import Chart from 'chart.js'

export const getBestCaseTime = (arr) => Math.min(...arr)

export const getWorstCaseTime = (arr) => Math.max(...arr)

export const getAverageCaseTime = (arr) => mean(arr)

export const generateRuntimeBarGraph = (as, js, type) => {
  const canvas = document.createElement('canvas')
  canvas.width = 800
  canvas.height = 500
  canvas.style.backgroundColor ='rgb(255,255,255)'
  document.body.appendChild(canvas)
  let asData, jsData, labels

  if (type === 'bar') {
    asData = [
      getAverageCaseTime(as),
      getBestCaseTime(as),
      getWorstCaseTime(as)
    ]
    jsData = [
      getAverageCaseTime(js),
      getBestCaseTime(js),
      getWorstCaseTime(js)
    ]
    labels = ['Average Case', 'Best Case', 'Worst Case']
  } else {
    asData = [...as]
    jsData = [...js]
    labels = Array.from(Array(120).keys())
  }


  new Chart(canvas, {
    type: type,
    data: {
      labels,
      datasets: [{
        label: 'Assemblyscript',
        data: type === 'bar' ? asData : as,
        backgroundColor: 'rgba(54, 162, 235)',
        borderColor: 'rgba(54, 162, 235)',
        fill: type === 'bar'
      }, {
        label: 'JS',
        data: type === 'bar' ? jsData : js,
        backgroundColor: 'rgba(255, 99, 132)',
        borderColor: 'rgba(255, 99, 132)',
        fill: type === 'bar'
      }]
    },
    options: {
      responsive: false,
      title: {
        display: true,
        text: 'Breadth First Search'
      },
      scales: {
        xAxes: [{
          gridLines: {
            display: false
          }
        }],
        yAxes: [{
          scaleLabel: {
            display: true,
            labelString: 'Time (ms)'
          },
          gridLines: {
            display: false
          }
        }]
      },
      elements: {
        point:{
          radius: 0
        }
      }
    }
  });
}
