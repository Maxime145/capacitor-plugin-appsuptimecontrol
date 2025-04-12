import { WebPlugin } from '@capacitor/core';

import type { CapacitorAppsUptimeControlPlugin } from './definitions';

export class CapacitorAppsUptimeControlWeb extends WebPlugin implements CapacitorAppsUptimeControlPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
