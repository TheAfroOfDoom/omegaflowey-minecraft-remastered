import JSON5 from 'json5'
import { BossfightEventName, BossfightStopReasonName, Gamemode } from './decode/schema'

interface BossfightRootEvent {
  name: string
  tick: number
  playerNumId: number
  playerNumGamemode: string
  playerHealth: number
}

interface BossfightGenericEvent {
  name: string
  tick: number
  data: unknown
}

interface BossfightStopEvent extends BossfightGenericEvent {
  name: 'bossfight.summit.end'
  data: {
    s: number
  }
}

export const isBossfightStopEvent = (event: any): event is BossfightStopEvent => {
  return typeof event === 'object' && event?.name === 'bossfight.summit.end'
}

export type BossfightInstance = [
  BossfightRootEvent,
  ...Array<BossfightGenericEvent | BossfightStopEvent>
]

// Converts bossfight string data to corresponding JSON events
export const parseData = (raw: string): BossfightInstance[] => {
  const instancesRaw = JSON5.parse(raw)
  if (!Array.isArray(instancesRaw)) {
    throw new Error('Data format invalid: must be an array')
  }

  const instances = []
  for (const instanceRaw of instancesRaw) {
    instances.push(parseInstance(instanceRaw))
  }
  return instances
}

export const parseInstance = (instanceRaw: unknown) => {
  if (!Array.isArray(instanceRaw)) {
    throw new Error('Invalid bossfight instance: must be an array')
  }

  const instances = []
  const rootEvent = parseRootEvent(instanceRaw[0])
  instances.push(rootEvent)

  const { tick: basetick } = rootEvent

  for (const eventRaw of instanceRaw.slice(1)) {
    instances.push(parseEvent(eventRaw, basetick))
  }
  return instances
}

export const parseRootEvent = (eventRaw: unknown) => {
  if (typeof eventRaw !== 'string') {
    throw new Error('Invalid root event: must be a string')
  }

  const rawFields = eventRaw.split(';')
  if (rawFields.length !== 5) {
    throw new Error(`Invalid number of root event fields: ${rawFields.length}`)
  }

  const [nameId, tick, playerNumId, playerNumGamemode] = rawFields
    .slice(0, 4)
    .map((s) => parseInt(s))
  const playerHealth = rawFields[4]

  return {
    name: BossfightEventName[nameId],
    tick,
    playerNumId,
    playerNumGamemode: Gamemode[playerNumGamemode],
    playerHealth: parseInt(playerHealth)
  }
}

export const parseEvent = (eventRaw: unknown, basetick: number) => {
  if (typeof eventRaw !== 'string') {
    throw new Error('Invalid event: must be a string')
  }

  const rawFields = eventRaw.split(';')
  if (rawFields.length !== 3) {
    throw new Error(`Invalid number of event fields: ${rawFields.length}`)
  }

  const [nameId, tick] = rawFields.slice(0, 2).map((s) => parseInt(s))
  const dataRaw = rawFields[2]
  const data = dataRaw !== '' ? JSON5.parse(dataRaw) : {}

  const name = BossfightEventName[nameId]
  if (name === 'bossfight.summit.end') {
    data.s = BossfightStopReasonName[data.s]
  }

  return {
    name: BossfightEventName[nameId],
    tick: tick + basetick,
    data
  }
}
