import Chart from 'chart.js'

const getOptions = (title, beginAtZero) => ({
  responsive: false,
    title: {
    display: true,
      text: title
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
      },
      ticks: {
        beginAtZero
      }
    }]
  },
  elements: {
    point:{
      radius: 0
    }
  }
})

const colors = [
  'rgba(54, 162, 235)',
  'rgba(255, 99, 132)'
]

export const toggleSpinner = () => {
  const spinner = document.getElementById('spinner')
  if (spinner.style.display === 'none') {
    spinner.style.display = 'inline-block'
  } else {
    spinner.style.display = 'none'
  }
}

export const generateBarGraph = (title, labels, data) => {
  const canvas = document.getElementById('bar-graph')
  canvas.width = 500
  canvas.height = 500

  new Chart(canvas, {
    type: 'bar',
    data: {
      labels,
      datasets: [{
        label: 'Assemblyscript',
        data: data.slice(0, data.length / 2),
        backgroundColor: 'rgba(54, 162, 235)',
        borderColor: 'rgba(54, 162, 235)',
        fill: true
      }, {
        label: 'Javascript',
        data: data.slice(data.length / 2),
        backgroundColor: 'rgba(255, 99, 132)',
        borderColor: 'rgba(255, 99, 132)',
        fill: true
      }]
    },
    options: getOptions(title, true)
  });
}

export const generateLineGraph = (title, labels, data, iterations) => {
  const canvas = document.getElementById('line-graph')
  canvas.width = 500
  canvas.height = 500
  const xLabels = Array.from(Array(parseInt(iterations)).keys())

  const datasets = data.map((val, index) => ({
    label: labels[index],
    data: val,
    backgroundColor: colors[index],
    borderColor: colors[index],
    fill: false
  }))

  new Chart(canvas, {
    type: 'line',
    data: {
      labels: xLabels,
      datasets
    },
    options: getOptions(title, false)
  })
}
