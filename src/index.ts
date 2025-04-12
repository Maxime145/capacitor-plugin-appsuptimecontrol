import { registerPlugin } from '@capacitor/core';

import type { CapacitorAppsUptimeControlPlugin } from './definitions';

const CapacitorAppsUptimeControl = registerPlugin<CapacitorAppsUptimeControlPlugin>('CapacitorAppsUptimeControl', {
  web: () => import('./web').then((m) => new m.CapacitorAppsUptimeControlWeb()),
});

export * from './definitions';
export { CapacitorAppsUptimeControl };
