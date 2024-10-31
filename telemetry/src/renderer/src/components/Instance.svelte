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
  const instanceStart = rootEvent.basetick
  const instanceEnd = events[events.length - 1].tick
  const instanceLength = (instanceEnd - instanceStart) / 20

  let svg
  onMount(() => {
    svg = d3
      .select(svg)
      .attr('id', `timeline-${idx}`)
      .attr('width', instanceLength * 50)

    const dimensions = svg.node().getBoundingClientRect()
    let svgHeight = dimensions.height
    const svgWidth = dimensions.width
    const timeScale = d3.scaleLinear([0, instanceLength], [0, svgWidth])

    const tickSecs = [0].concat(events.map((e) => (e.tick - instanceStart) / 20))
    const axis = d3
      .axisBottom(timeScale)
      .tickValues(tickSecs)
      .tickFormat(d3.format('.2f'))
      .tickPadding(20)
      .offset(20)
    const axisElement = svg.append('g').classed('timeline-axis', true).call(axis)

    const minHeight = 20
    let maxHeight = 0
    let prevWidth: number
    let height = minHeight
    let prevHeight = 0
    axisElement.selectAll('.tick').each(function () {
      const transform = d3.select(this).attr('transform')
      const width = parseFloat(transform.replaceAll(/^translate\(/g, '').replaceAll(/,0\)$/g, ''))

      if (prevWidth === width) {
        d3.select(this).classed('hidden', true)
      } else {
        if (prevWidth !== undefined && width - prevWidth <= 40) {
          height += 20
          maxHeight = Math.max(maxHeight, height)
        } else {
          height = minHeight
        }
        d3.select(this).attr('transform', `translate(${width}, ${height})`)
      }

      prevHeight = height
      prevWidth = width
    })
    svg.attr('height', maxHeight + svgHeight)

    svg = svg.node()
  })
</script>

<svg bind:this={svg} class="timeline" />
