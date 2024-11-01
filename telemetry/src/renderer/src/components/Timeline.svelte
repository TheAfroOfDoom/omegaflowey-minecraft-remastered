<script lang="ts">
  import '../assets/event-timeline.css'
  import { parseData, raw } from './Timeline'
  import Instance from './Instance.svelte'

  export let data = parseData(raw)
</script>

<div class="event-timeline-container">
  <span class="event-timeline-title">Event Timeline</span>
  <div class="event-timeline-content">
    {#each data as instance, idx}
      <Instance data={{ instance, idx }} />
    {/each}
  </div>
</div>
