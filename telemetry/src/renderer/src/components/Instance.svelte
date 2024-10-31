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
      .attr('width', instanceLength * 20)

    const width = svg.node().getBoundingClientRect().width
    const timeScale = d3.scaleLinear([0, instanceLength], [0, width])

    const tickSecs = [0].concat(events.map((e) => (e.tick - instanceStart) / 20))
    const axis = d3
      .axisBottom(timeScale)
      .tickValues(tickSecs)
      .tickFormat(d3.format('.2f'))
      .tickPadding(20)
      .offset(20)
    svg.append('g').classed('timeline-axis', true).call(axis)

    svg = svg.node()
  })
</script>

<svg bind:this={svg} class="timeline" />
