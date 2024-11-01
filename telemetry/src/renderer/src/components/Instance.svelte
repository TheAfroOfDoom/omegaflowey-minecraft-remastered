<script lang="ts">
  import '../assets/event-color-schema.css'
  import type { BossfightInstance } from '../lib/decode'
  import { BossfightEventIcon } from '../lib/decode/schema'
  import * as d3 from 'd3'
  import JSON5 from 'json5'
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
      .attr('id', `instance-${idx}`)
      .attr('width', instanceLength * 50 + 150)
      .attr('height', 100)

    const dimensions = svgSelection.node().getBoundingClientRect()
    let svgHeight = dimensions.height
    const timeScale = d3.scaleLinear([0, instanceLength], [0, instanceLength * 50])

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
      .attr('id', (_, eventIdx) => `instance-${idx}-event-${eventIdx}`)
      .classed('event', true)
      .attr('cx', (d) => tickToWidth(d.tick))
      .attr('cy', minCy)
      .attr('r', 10)
      .on('click', function (event, d) {
        const eventId = d3.select(this).attr('id')

        // No inspect if this is a root event / the data object is empty
        if (!('data' in d) || Object.keys(d.data).length === 0) {
          return
        }

        // Remove inspect if it already exists (toggle)
        const inspectSelection = d3.select(`#${eventId}-inspect`)
        if (inspectSelection.node()) {
          inspectSelection.remove()
          d3.select(`#${eventId}-inspect-border`).remove()
          d3.select(`#${eventId}-inspect-text`).remove()
          return
        }

        const width = 100
        const height = 50

        const borderPadding = 10
        const widthBorder = width + borderPadding
        const heightBorder = height + borderPadding

        const xBorder = parseFloat(d3.select(event.target).attr('cx'))
        const yBorder = parseFloat(d3.select(event.target).attr('cy'))
        const x = xBorder + borderPadding / 2
        const y = yBorder + borderPadding / 2

        svgSelection
          .append('rect')
          .attr('id', `${eventId}-inspect-border`)
          .classed('event-info-border', true)
          .attr('x', xBorder)
          .attr('y', yBorder)
          .attr('width', widthBorder)
          .attr('height', heightBorder)
          .attr('fill', 'currentcolor')
          .attr('rx', 5)

        svgSelection
          .append('rect')
          .attr('id', `${eventId}-inspect`)
          .classed('event-info', true)
          .attr('x', x)
          .attr('y', y)
          .attr('width', width)
          .attr('height', height)
          .attr('fill', 'currentcolor')
          .attr('rx', 5)

        svgSelection
          .append('text')
          .attr('id', `${eventId}-inspect-text`)
          .attr('x', x + 5)
          .attr('y', y + 20)
          .classed('event-info-text', true)
          .text(() => JSON5.stringify(d.data))
      })

    eventPts.each(function (d) {
      d3.select(this).append('title').text(d.name)
    })

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

    // Add name class to each event point for color schema
    eventPts.each(function (d) {
      this.classList.add(d.name)

      const icon = BossfightEventIcon[d.name]
      if (icon !== undefined) {
        const eventPtSelection = d3.select(this).classed('hidden', true)
        const x = parseFloat(eventPtSelection.attr('cx')) - 13
        const y = parseFloat(eventPtSelection.attr('cy')) + 6
        const id = eventPtSelection.attr('id')

        svgSelection
          .insert('text', `#${id}`)
          .classed('event-icon', true)
          .text(icon)
          .attr('x', x)
          .attr('y', y)
      }
    })

    svg = svgSelection.node()
  })
</script>

<svg bind:this={svg} class="timeline" />
