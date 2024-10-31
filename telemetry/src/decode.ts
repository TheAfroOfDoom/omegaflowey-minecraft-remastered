import { readJSON } from "fs-extra";
import { BossfightEventName, Gamemode } from "./decode/schema";

// Converts bossfight string data to corresponding JSON events
export const parseData = async (path: string) => {
  const instancesRaw = await readJSON(path);
  if (!Array.isArray(instancesRaw)) {
    throw new Error("Data format invalid: must be an array");
  }

  const instances = [];
  for (const instanceRaw of instancesRaw) {
    instances.push(parseInstance(instanceRaw));
  }
  return instances;
};

export const parseInstance = (instanceRaw: unknown) => {
  if (!Array.isArray(instanceRaw)) {
    throw new Error("Invalid bossfight instance: must be an array");
  }

  const instances = [];
  instances.push(parseRootEvent(instanceRaw[0]));
  return instances;
};

export const parseRootEvent = (eventRaw: unknown) => {
  if (typeof eventRaw !== "string") {
    throw new Error("Invalid root event: must be a string");
  }

  const rawFields = eventRaw.split(";");
  if (rawFields.length !== 5) {
    throw new Error(`Invalid number of root event fields: ${rawFields.length}`);
  }

  const [nameId, basetick, playerNumId, playerNumGamemode] = rawFields
    .slice(0, 4)
    .map((s) => parseInt(s));
  const playerHealth = rawFields[4];

  return {
    name: BossfightEventName[nameId],
    basetick,
    playerNumId,
    playerNumGamemode: Gamemode[playerNumGamemode],
    playerHealth: parseInt(playerHealth),
  };
};

export const parseEvent = (event: unknown) => {
  if (typeof event !== "string") {
    throw new Error("Invalid event: must be a string");
  }
};
