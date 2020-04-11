import Chart from 'chart.js'

const getOptions = title => ({
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

export const generateBarGraph = (title, labels, data) => {
  const canvas = document.createElement('canvas')
  canvas.width = 500
  canvas.height = 500
  document.body.appendChild(canvas)

  new Chart(canvas, {
    type: 'bar',
    data: {
      labels,
      datasets: [{
        label: 'Assemblyscript',
        data: data.slice(0, 5),
        backgroundColor: 'rgba(54, 162, 235)',
        borderColor: 'rgba(54, 162, 235)',
        fill: true
      }, {
        label: 'Javascript',
        data: data.slice(5),
        backgroundColor: 'rgba(255, 99, 132)',
        borderColor: 'rgba(255, 99, 132)',
        fill: true
      }]
    },
    options: getOptions(title)
  });
}

export const generateLineGraph = (title, labels, data) => {
  const canvas = document.createElement('canvas')
  canvas.width = 500
  canvas.height = 500
  document.body.appendChild(canvas)
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
      labels: Array.from(Array(120).keys()),
      datasets
    },
    options: getOptions(title)
  });
}
