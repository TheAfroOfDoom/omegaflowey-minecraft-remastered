<script lang="ts">
  import type { BossfightInstance } from '../lib/decode'
  import * as d3 from 'd3'
  import { onMount } from 'svelte'

  export let data: {
    instance: BossfightInstance
    idx: number
  }
  const { instance, idx } = data

  const [rootEvent, ...events] = instance
  const instanceStart = rootEvent.tick
  const instanceEnd = events[events.length - 1].tick
  const instanceLength = (instanceEnd - instanceStart) / 20

  let svg
  onMount(() => {
    const svgSelection = d3
      .select(svg)
      .attr('id', `timeline-${idx}`)
      .attr('width', instanceLength * 50)
      .attr('height', 100)

    const dimensions = svgSelection.node().getBoundingClientRect()
    let svgHeight = dimensions.height
    const svgWidth = dimensions.width
    const timeScale = d3.scaleLinear([0, instanceLength], [0, svgWidth])

    const axis = d3
      .axisTop(timeScale)
      .ticks(d3.tickStep(0, instanceLength, 5))
      .tickPadding(20)
      .offset(20)
      .tickSize(3)
    svgSelection.append('g').classed('timeline-axis', true).call(axis)

    const tickToWidth = (tick: number) => ((tick - instanceStart) / 20) * 50 + 20

    // Add event data points
    const minCy = 60
    const eventPts = svgSelection
      .selectAll('circle.event')
      .data(instance)
      .enter()
      .append('circle')
      .classed('event', true)
      .attr('cx', (d) => tickToWidth(d.tick))
      .attr('cy', minCy)
      .attr('r', 10)

    let maxHeight = 0
    let cy = minCy
    let prevCx: number
    eventPts.each(function () {
      const cx = parseFloat(d3.select(this).attr('cx'))

      if (prevCx !== undefined && cx - prevCx <= 20) {
        cy += 20
        maxHeight = Math.max(maxHeight, cy)
      } else {
        cy = minCy
      }
      d3.select(this).attr('cy', cy)

      prevCx = cx
    })
    svgSelection.attr('height', maxHeight + svgHeight)

    svg = svgSelection.node()
  })
</script>

<svg bind:this={svg} class="timeline" />
